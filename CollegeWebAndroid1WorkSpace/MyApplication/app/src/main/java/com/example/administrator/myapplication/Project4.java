package com.example.administrator.myapplication;

        import android.graphics.Bitmap;
        import android.graphics.BitmapFactory;
        import android.graphics.drawable.Drawable;
        import android.os.StrictMode;
        import android.support.v7.app.AppCompatActivity;
        import android.os.Bundle;
        import android.text.Html;
        import android.text.Spannable;
        import android.text.SpannableString;
        import android.text.method.LinkMovementMethod;
        import android.text.style.ImageSpan;
        import android.util.Log;
        import android.util.TypedValue;
        import android.view.Display;
        import android.view.View;
        import android.view.ViewGroup;
        import android.widget.ArrayAdapter;
        import android.widget.Button;
        import android.widget.EditText;
        import android.widget.ImageView;
        import android.widget.Spinner;
        import android.widget.TableLayout;
        import android.widget.TableRow;
        import android.widget.TextView;

        import org.json.JSONArray;
        import org.json.JSONException;
        import org.json.JSONObject;

        import java.io.IOException;
        import java.io.InputStream;
        import java.net.HttpURLConnection;
        import java.net.MalformedURLException;
        import java.net.URL;
        import java.util.ArrayList;
        import java.util.LinkedList;

public class Project4 extends AppCompatActivity {
    private final int WC = ViewGroup.LayoutParams.WRAP_CONTENT;
    private final int MP = ViewGroup.LayoutParams.MATCH_PARENT;
    private Button Button;
    ImageView imView;
    private TableLayout tableLayout;
    @Override
    protected void onCreate(Bundle savedInstanceState) {

        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_project4);
        final Spinner Spinner = (Spinner)findViewById(R.id.spinner);
        String[] list = new String[3];
        list[0]="musicTrack";
        list[1]="movie";
        list[2]="software";
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(Project4.this, android.R.layout.simple_spinner_item, list);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        Spinner.setAdapter(adapter);
        final EditText inputText = (EditText) findViewById(R.id.Search);

        Button = (Button) findViewById(R.id.button);
        Button.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {

                String item = inputText.getText().toString();
                final String option = (String) Spinner.getSelectedItem();
                String searchResult = HpptRequest.HpptRequest(item, option);
                if (option.equalsIgnoreCase("musicTrack")) {
                    LinkedList<Music> music = new LinkedList<Music>();
                    try {
                        JSONArray jsonArray = new JSONArray(searchResult.substring(searchResult.indexOf("["), searchResult.lastIndexOf("]") + 1));
                        for (int i = 0; i < jsonArray.length(); i++) {
                            JSONObject jsonObject = jsonArray.getJSONObject(i);

                            String trackName = jsonObject.optString("trackName");
                            String artistName = jsonObject.optString("artistName");
                            Double trackPrice = jsonObject.optDouble("trackPrice");
                            Double collectionPrice = jsonObject.optDouble("collectionPrice");
                            String collectionName = jsonObject.optString("collectionName");
                            String artworkUrl30 = jsonObject.optString("artworkUrl30");
                            music.addLast(new Music(trackName, artistName, trackPrice, collectionPrice, collectionName, artworkUrl30));
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    displayTableMusic(music.size()+1,3,music);
                }else if(option.equalsIgnoreCase("movie")){
                    LinkedList<Movie> movie=null;
                    try {
                        JSONArray jsonArray = new JSONArray(searchResult.substring(searchResult.indexOf("["), searchResult.lastIndexOf("]") + 1));
                        for (int i = 0; i < jsonArray.length(); i++) {
                            JSONObject jsonObject = jsonArray.getJSONObject(i);

                            String trackName = jsonObject.optString("trackName");
                            String contentAdvisoryRating = jsonObject.optString("contentAdvisoryRating");
                            Double trackHdPrice = jsonObject.optDouble("trackHdPrice");
                            String primaryGenreName = jsonObject.optString("primaryGenreName");
                            String longDescription = jsonObject.optString("longDescription");
                            String artworkUrl30 = jsonObject.optString("artworkUrl30");

                            movie.add(new Movie(trackName, longDescription, contentAdvisoryRating, trackHdPrice, primaryGenreName, artworkUrl30));
                        }


                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    private void displayTableMusic(int row, int col, final LinkedList<Music> list) {


        tableLayout = (TableLayout)findViewById(R.id.tableLayout);
        tableLayout.removeAllViews();
        tableLayout.setStretchAllColumns(true);
        for(int i=0;i<20;i++)
        {
            TableRow tableRow=new TableRow(Project4.this);
            for(int j=0;j<3;j++)
            {
                TextView tv = new TextView(Project4.this);
                tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
                if (i == 0 && j == 0) {
                    tv.setText("trackName");
                }else if (i == 0 && j == 1){
                    tv.setText("CollectionName");
                }else if (i == 0 && j == 2) {
                    tv.setText("ArtWork");
                }else if(j==2&&i!=0){
                    tv.setText("https://is3-ssl.mzstatic.com/image/thumb/Music6/v4/96/15/98/961598f1-b494-e358-729a-1b4bf1ee0ab5/source/30x30bb.jpg");
                }else if (j==1&&i!=0) {
                    tv.setText(list.get(i-1).getCollectionName());
                } else if(j==0&&i!=0){
                    tv.setText(list.get(i-1).getTrackName());
                }
                tableRow.addView(tv);
            }

            tableLayout.addView(tableRow, new TableLayout.LayoutParams(MP, WC,5));

        }
    }

    public Bitmap returnBitMap(String url) {
        URL myFileUrl = null;
        Bitmap bitmap = null;
        try {
            myFileUrl = new URL(url);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        try {
            HttpURLConnection conn = (HttpURLConnection) myFileUrl
                    .openConnection();
            conn.setDoInput(true);
            conn.connect();
            InputStream is = conn.getInputStream();
            bitmap = BitmapFactory.decodeStream(is);
            is.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return bitmap;
    }
}

package p307;

import android.content.Context;
import android.text.TextUtils;
import android.util.JsonReader;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import com.google.firebase.installations.FirebaseInstallationsException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;
import p035.AbstractC1220;
import p074.InterfaceC1650;

/* renamed from: ᐧـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3739 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Pattern f14571 = Pattern.compile("[0-9]+s");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Charset f14572 = Charset.forName("UTF-8");

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3741 f14573 = new C3741();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1650 f14574;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f14575;

    public C3739(Context context, InterfaceC1650 interfaceC1650) {
        this.f14575 = context;
        this.f14574 = interfaceC1650;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m7915(HttpURLConnection httpURLConnection, byte[] bArr) {
        OutputStream outputStream = httpURLConnection.getOutputStream();
        if (outputStream == null) {
            throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
        }
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        try {
            gZIPOutputStream.write(bArr);
        } finally {
            try {
                gZIPOutputStream.close();
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static long m7916(String str) {
        if (!f14571.matcher(str).matches()) {
            throw new IllegalArgumentException("Invalid Expiration Timestamp.");
        }
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C3743 m7917(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f14572));
        ʽﹳ m7951 = C3742.m7951();
        jsonReader.beginObject();
        String str = null;
        String str2 = null;
        String str3 = null;
        C3742 c3742 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                str = jsonReader.nextString();
            } else if (nextName.equals("fid")) {
                str2 = jsonReader.nextString();
            } else if (nextName.equals("refreshToken")) {
                str3 = jsonReader.nextString();
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        m7951.ʽʽ = jsonReader.nextString();
                    } else if (nextName2.equals("expiresIn")) {
                        m7951.ˈٴ = Long.valueOf(m7916(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                C3742 c37422 = m7951.ˈ();
                jsonReader.endObject();
                c3742 = c37422;
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return new C3743(str, str2, str3, c3742, 1);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m7918(HttpURLConnection httpURLConnection, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:18.0.0");
            m7915(httpURLConnection, jSONObject.toString().getBytes("UTF-8"));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m7919(HttpURLConnection httpURLConnection) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:18.0.0");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            m7915(httpURLConnection, jSONObject2.toString().getBytes("UTF-8"));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m7920(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        String str4 = null;
        if (errorStream != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f14572));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append('\n');
                }
                str4 = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb);
            } catch (IOException unused) {
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
            try {
                bufferedReader.close();
            } catch (IOException unused3) {
            }
        }
        if (TextUtils.isEmpty(str4)) {
            return;
        }
        String str5 = "Firebase options used while communicating with Firebase server APIs: " + str2 + ", " + str3 + (TextUtils.isEmpty(str) ? "" : AbstractC1220.m3771(", ", str));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static URL m7921(String str) {
        try {
            return new URL("https://firebaseinstallations.googleapis.com/v1/" + str);
        } catch (MalformedURLException e) {
            throw new FirebaseInstallationsException(e.getMessage());
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C3742 m7922(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f14572));
        ʽﹳ m7951 = C3742.m7951();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                m7951.ʽʽ = jsonReader.nextString();
            } else if (nextName.equals("expiresIn")) {
                m7951.ˈٴ = Long.valueOf(m7916(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        m7951.ᴵˊ = 1;
        return m7951.ˈ();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a1 A[Catch: NameNotFoundException -> 0x00b3, TryCatch #1 {NameNotFoundException -> 0x00b3, blocks: (B:8:0x0068, B:10:0x007a, B:17:0x0084, B:21:0x0091, B:23:0x00a1, B:27:0x00b5, B:29:0x00bf, B:31:0x00d8), top: B:7:0x0068 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b5 A[Catch: NameNotFoundException -> 0x00b3, TryCatch #1 {NameNotFoundException -> 0x00b3, blocks: (B:8:0x0068, B:10:0x007a, B:17:0x0084, B:21:0x0091, B:23:0x00a1, B:27:0x00b5, B:29:0x00bf, B:31:0x00d8), top: B:7:0x0068 }] */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.net.HttpURLConnection m7923(java.net.URL r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p307.C3739.m7923(java.net.URL, java.lang.String):java.net.HttpURLConnection");
    }
}

package p105;

import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p035.AbstractC1220;
import p234.C3194;
import p411.AbstractC4901;

/* renamed from: ˆי.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1929 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Charset f7676 = Charset.forName("UTF-8");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3194 f7677;

    public C1929(C3194 c3194) {
        this.f7677 = c3194;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static String m4884(List list) {
        HashMap hashMap = new HashMap();
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < list.size(); i++) {
            try {
                jSONArray.put(new JSONObject(AbstractC1930.f7678.ﾞᴵ(list.get(i))));
            } catch (JSONException e) {
            }
        }
        hashMap.put("rolloutsState", jSONArray);
        return new JSONObject(hashMap).toString();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m4885(File file, String str) {
        if (file.exists() && file.delete()) {
            String str2 = "Deleted corrupt file: " + file.getAbsolutePath() + "\nReason: " + str;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ArrayList m4886(String str) {
        JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutsState");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            String string = jSONArray.getString(i);
            try {
                arrayList.add(AbstractC1930.m4892(string));
            } catch (Exception e) {
                String str2 = "Failed de-serializing rollouts state. " + string;
            }
        }
        return arrayList;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static HashMap m4887(String str) {
        JSONObject jSONObject = new JSONObject(str);
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String str2 = null;
            if (!jSONObject.isNull(next)) {
                str2 = jSONObject.optString(next, null);
            }
            hashMap.put(next, str2);
        }
        return hashMap;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m4888(File file) {
        if (file.exists() && file.delete()) {
            String str = "Deleted corrupt file: " + file.getAbsolutePath();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.Closeable] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public final Map m4889(String str, boolean z) {
        Throwable th;
        FileInputStream fileInputStream;
        C3194 c3194 = this.f7677;
        File m7025 = z ? c3194.m7025(str, "internal-keys") : c3194.m7025(str, "keys");
        if (!m7025.exists() || m7025.length() == 0) {
            m4885(m7025, "The file has a length of zero for session: " + str);
            return Collections.EMPTY_MAP;
        }
        try {
            try {
                fileInputStream = new FileInputStream(m7025);
                try {
                    HashMap m4887 = m4887(AbstractC4901.m9698(fileInputStream));
                    AbstractC4901.m9704(fileInputStream, "Failed to close user metadata file.");
                    return m4887;
                } catch (Exception e) {
                    m4888(m7025);
                    AbstractC4901.m9704(fileInputStream, "Failed to close user metadata file.");
                    return Collections.EMPTY_MAP;
                }
            } catch (Throwable th2) {
                th = th2;
                AbstractC4901.m9704(r1, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            fileInputStream = null;
        } catch (Throwable th3) {
            ?? r1 = 0;
            th = th3;
            AbstractC4901.m9704(r1, "Failed to close user metadata file.");
            throw th;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String m4890(String str) {
        FileInputStream fileInputStream;
        File m7025 = this.f7677.m7025(str, "user-data");
        FileInputStream fileInputStream2 = null;
        if (!m7025.exists() || m7025.length() == 0) {
            AbstractC1220.m3771("No userId set for session ", str);
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            }
            m4888(m7025);
            return null;
        }
        try {
            fileInputStream = new FileInputStream(m7025);
            try {
                try {
                    JSONObject jSONObject = new JSONObject(AbstractC4901.m9698(fileInputStream));
                    String optString = !jSONObject.isNull("userId") ? jSONObject.optString("userId", null) : null;
                    String str2 = "Loaded userId " + optString + " for session " + str;
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    }
                    AbstractC4901.m9704(fileInputStream, "Failed to close user metadata file.");
                    return optString;
                } catch (Exception e) {
                    m4888(m7025);
                    AbstractC4901.m9704(fileInputStream, "Failed to close user metadata file.");
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                AbstractC4901.m9704(fileInputStream2, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            AbstractC4901.m9704(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m4891(String str, Map map, boolean z) {
        String jSONObject;
        BufferedWriter bufferedWriter;
        C3194 c3194 = this.f7677;
        File m7025 = z ? c3194.m7025(str, "internal-keys") : c3194.m7025(str, "keys");
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                jSONObject = new JSONObject(map).toString();
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(m7025), f7676));
            } catch (Exception e) {
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedWriter.write(jSONObject);
            bufferedWriter.flush();
            AbstractC4901.m9704(bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Exception e2) {
            bufferedWriter2 = bufferedWriter;
            m4888(m7025);
            AbstractC4901.m9704(bufferedWriter2, "Failed to close key/value metadata file.");
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            AbstractC4901.m9704(bufferedWriter2, "Failed to close key/value metadata file.");
            throw th;
        }
    }
}

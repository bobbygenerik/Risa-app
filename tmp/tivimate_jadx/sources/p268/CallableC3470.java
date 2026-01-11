package p268;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;
import p414.C4916;
import ﹳי.ʽ;

/* renamed from: ـˎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class CallableC3470 implements Callable {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C3466 f13632;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f13633;

    public /* synthetic */ CallableC3470(C3466 c3466, int i) {
        this.f13633 = i;
        this.f13632 = c3466;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final Object m7393() {
        String byteArrayOutputStream;
        C3466 c3466 = this.f13632;
        synchronized (c3466) {
            try {
                C3469 c3469 = (C3469) c3466.f13623.get();
                ArrayList m7385 = c3469.m7385();
                c3469.m7390();
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < m7385.size(); i++) {
                    C3471 c3471 = (C3471) m7385.get(i);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", c3471.f13635);
                    jSONObject.put("dates", new JSONArray((Collection) c3471.f13634));
                    jSONArray.put(jSONObject);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("heartbeats", jSONArray);
                jSONObject2.put("version", "2");
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream2, 11);
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                    try {
                        gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                        gZIPOutputStream.close();
                        base64OutputStream.close();
                        byteArrayOutputStream = byteArrayOutputStream2.toString("UTF-8");
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        base64OutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return byteArrayOutputStream;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f13633) {
            case 0:
                return m7393();
            default:
                C3466 c3466 = this.f13632;
                synchronized (c3466) {
                    C3469 c3469 = (C3469) c3466.f13623.get();
                    long currentTimeMillis = System.currentTimeMillis();
                    C4916 c4916 = (C4916) c3466.f13619.get();
                    String str = c4916.f18339;
                    ʽ r4 = c4916.f18338;
                    if (!r4.ʼˎ().isEmpty()) {
                        str = str + ' ' + C4916.m9718(r4.ʼˎ());
                    }
                    c3469.m7388(str, currentTimeMillis);
                }
                return null;
        }
    }
}

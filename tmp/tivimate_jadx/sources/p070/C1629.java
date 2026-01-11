package p070;

import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
import p010.AbstractC0844;
import p364.C4447;
import ﹳי.ʽ;

/* renamed from: ʾٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1629 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public Object f6481;

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object f6482;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object f6483;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f6484;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object f6485;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Object f6486;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object f6487;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Object f6488;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object f6489;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m4408(JSONObject jSONObject, String str) {
        StringBuilder m3020 = AbstractC0844.m3020(str);
        m3020.append(jSONObject.toString());
        m3020.toString();
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0426 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v23, types: [ʾٴ.ⁱˊ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v26, types: [ʾٴ.ⁱˊ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v8, types: [ʼי.ﹳٴ, java.lang.Object] */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m4409(p139.C2356 r49, int r50) {
        /*
            Method dump skipped, instructions count: 1213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070.C1629.m4409(ˉˋ.ʼˎ, int):void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C1630 m4410() {
        return (C1630) ((AtomicReference) this.f6486).get();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C1630 m4411(int i) {
        C1630 c1630 = null;
        try {
            if (!AbstractC0844.m3021(2, i)) {
                JSONObject jSONObject = ((ʽ) this.f6484).ʾᵎ();
                if (jSONObject != null) {
                    C1630 c16302 = ((ʽ) this.f6482).ʻٴ(jSONObject);
                    m4408(jSONObject, "Loaded cached settings: ");
                    ((C4447) this.f6483).getClass();
                    long currentTimeMillis = System.currentTimeMillis();
                    if (AbstractC0844.m3021(3, i) || c16302.f6490 >= currentTimeMillis) {
                        try {
                            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                            }
                            return c16302;
                        } catch (Exception e) {
                            c1630 = c16302;
                            return c1630;
                        }
                    }
                    if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                        return null;
                    }
                } else if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                }
            }
            return null;
        } catch (Exception e2) {
        }
    }
}

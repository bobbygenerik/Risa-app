package p447;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.bumptech.glide.C0229;
import p392.C4643;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ʿـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC5242 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19707;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C5253 f19708;

    public /* synthetic */ RunnableC5242(C5253 c5253, int i) {
        this.f19707 = i;
        this.f19708 = c5253;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19707) {
            case 0:
                this.f19708.m10367();
                return;
            case 1:
                C5309 c5309 = this.f19708.f19807;
                C5322 c5322 = c5309.f20012;
                C5215 c5215 = c5322.f20200;
                C5253 c5253 = c5322.f20187;
                C5313 c5313 = c5322.f20205;
                C5322.m10556(c5215);
                c5215.m10203();
                if (c5309.m10528()) {
                    if (c5309.m10527()) {
                        C5322.m10560(c5313);
                        c5313.f20037.m1136(null);
                        Bundle bundle = new Bundle();
                        bundle.putString("source", "(not set)");
                        bundle.putString("medium", "(not set)");
                        bundle.putString("_cis", "intent");
                        bundle.putLong("_cc", 1L);
                        C5322.m10559(c5253);
                        c5253.m10369("auto", "_cmpx", bundle);
                    } else {
                        C5322.m10560(c5313);
                        C0229 c0229 = c5313.f20037;
                        String m1132 = c0229.m1132();
                        if (TextUtils.isEmpty(m1132)) {
                            C5344 c5344 = c5322.f20193;
                            C5322.m10556(c5344);
                            c5344.f20345.m10217("Cache still valid but referrer not found");
                        } else {
                            long m9215 = c5313.f20028.m9215() / 3600000;
                            Uri parse = Uri.parse(m1132);
                            Bundle bundle2 = new Bundle();
                            Pair pair = new Pair(parse.getPath(), bundle2);
                            for (String str : parse.getQueryParameterNames()) {
                                bundle2.putString(str, parse.getQueryParameter(str));
                            }
                            ((Bundle) pair.second).putLong("_cc", (m9215 - 1) * 3600000);
                            Object obj = pair.first;
                            String str2 = obj == null ? "app" : (String) obj;
                            C5322.m10559(c5253);
                            c5253.m10369(str2, "_cmp", (Bundle) pair.second);
                        }
                        c0229.m1136(null);
                    }
                    C5322.m10560(c5313);
                    c5313.f20028.m9216(0L);
                    return;
                }
                return;
            case 2:
                C5253 c52532 = this.f19708;
                c52532.m10252();
                C5322 c53222 = (C5322) ((ᵎﹶ) c52532).ʾˋ;
                C5313 c53132 = c53222.f20205;
                C5344 c53442 = c53222.f20193;
                C5322.m10560(c53132);
                C5316 c5316 = c53132.f20034;
                if (c5316.m10553()) {
                    C5322.m10556(c53442);
                    c53442.f20340.m10217("Deferred Deep Link already retrieved. Not fetching again.");
                    return;
                }
                C4643 c4643 = c53132.f20043;
                long m92152 = c4643.m9215();
                c4643.m9216(1 + m92152);
                if (m92152 >= 5) {
                    C5322.m10556(c53442);
                    c53442.f20348.m10217("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                    c5316.m10552(true);
                    return;
                } else {
                    if (c52532.f19810 == null) {
                        c52532.f19810 = new C5348(c52532, c53222, 3);
                    }
                    c52532.f19810.m10588(0L);
                    return;
                }
            default:
                this.f19708.m10367();
                return;
        }
    }
}

package p447;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import p004.C0796;
import p392.C4643;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5350 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C5253 f20364;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f20365;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ long f20366;

    public RunnableC5350(C5253 c5253, long j, int i) {
        this.f20365 = i;
        switch (i) {
            case 1:
                this.f20366 = j;
                Objects.requireNonNull(c5253);
                this.f20364 = c5253;
                return;
            default:
                this.f20366 = j;
                Objects.requireNonNull(c5253);
                this.f20364 = c5253;
                return;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f20365) {
            case 0:
                C5322 c5322 = (C5322) ((ᵎﹶ) this.f20364).ʾˋ;
                C5313 c5313 = c5322.f20205;
                C5322.m10560(c5313);
                C4643 c4643 = c5313.f20039;
                long j = this.f20366;
                c4643.m9216(j);
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                c5344.f20340.m10216(Long.valueOf(j), "Session timeout duration set");
                return;
            default:
                C5253 c5253 = this.f20364;
                c5253.m10252();
                c5253.m10526();
                C5322 c53222 = (C5322) ((ᵎﹶ) c5253).ʾˋ;
                C5344 c53442 = c53222.f20193;
                C5322.m10556(c53442);
                c53442.f20340.m10217("Resetting analytics data (FE)");
                C5256 c5256 = c53222.f20192;
                C5322.m10559(c5256);
                c5256.m10252();
                C0796 c0796 = c5256.f19833;
                ((C5244) c0796.f3351).m10586();
                ((C5322) ((ᵎﹶ) ((C5256) c0796.f3353)).ʾˋ).f20206.getClass();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                c0796.f3352 = elapsedRealtime;
                c0796.f3354 = elapsedRealtime;
                c53222.m10566().m10360();
                boolean z = !c53222.m10568();
                C5313 c53132 = c53222.f20205;
                C5322.m10560(c53132);
                c53132.f20030.m9216(this.f20366);
                C5322 c53223 = (C5322) ((ᵎﹶ) c53132).ʾˋ;
                C5313 c53133 = c53223.f20205;
                C5322.m10560(c53133);
                if (!TextUtils.isEmpty(c53133.f20027.m1132())) {
                    c53132.f20027.m1136(null);
                }
                c53132.f20033.m9216(0L);
                c53132.f20032.m9216(0L);
                if (!c53223.f20189.m10575()) {
                    c53132.m10549(z);
                }
                c53132.f20037.m1136(null);
                c53132.f20028.m9216(0L);
                c53132.f20023.ᵔﹳ((Bundle) null);
                C5240 m10569 = c53222.m10569();
                m10569.m10252();
                m10569.m10526();
                C5217 m10302 = m10569.m10302(false);
                m10569.m10304();
                ((C5322) ((ᵎﹶ) m10569).ʾˋ).m10565().m10362();
                m10569.m10306(new RunnableC5266(m10569, m10302, 0));
                C5322.m10559(c5256);
                c5256.f19835.m9151();
                c5253.f19799 = z;
                c53222.m10569().m10292(new AtomicReference());
                return;
        }
    }
}

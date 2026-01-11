package androidx.work;

import android.content.Context;
import com.bumptech.glide.ʽ;
import com.bumptech.glide.ˈ;
import p056.C1505;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p152.AbstractC2444;
import p322.AbstractC3967;
import p322.C3975;
import p322.C3984;
import p324.AbstractC3999;
import p324.C4011;

/* loaded from: classes.dex */
public abstract class CoroutineWorker extends AbstractC3967 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final WorkerParameters f1561;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3984 f1562;

    public CoroutineWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f1561 = workerParameters;
        this.f1562 = C3984.f15353;
    }

    @Override // p322.AbstractC3967
    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1505 mo1018() {
        C3984 c3984 = C3984.f15353;
        InterfaceC2139 interfaceC2139 = this.f1562;
        if (AbstractC2444.m5562(interfaceC2139, c3984)) {
            interfaceC2139 = this.f1561.f1572;
        }
        return ˈ.ᵢˏ(interfaceC2139.mo3421(AbstractC3999.m8161()), new C3975(this, null, 1));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract Object mo1019(InterfaceC2136 interfaceC2136);

    @Override // p322.AbstractC3967
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1505 mo1020() {
        C4011 m8161 = AbstractC3999.m8161();
        C3984 c3984 = this.f1562;
        c3984.getClass();
        return ˈ.ᵢˏ(ʽ.ˏי(c3984, m8161), new C3975(this, null, 0));
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object m1021() {
        throw new IllegalStateException("Not implemented");
    }
}

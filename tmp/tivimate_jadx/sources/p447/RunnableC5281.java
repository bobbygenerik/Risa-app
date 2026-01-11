package p447;

import j$.util.Objects;
import p339.AbstractC4228;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˏⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5281 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ boolean f19917;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19918;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C5240 f19919;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C5217 f19920;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC4228 f19921;

    public /* synthetic */ RunnableC5281(C5240 c5240, C5217 c5217, boolean z, AbstractC4228 abstractC4228, int i) {
        this.f19918 = i;
        this.f19920 = c5217;
        this.f19917 = z;
        this.f19921 = abstractC4228;
        this.f19919 = c5240;
    }

    public RunnableC5281(C5240 c5240, C5217 c5217, boolean z, C5287 c5287) {
        this.f19918 = 2;
        this.f19920 = c5217;
        this.f19917 = z;
        this.f19921 = c5287;
        Objects.requireNonNull(c5240);
        this.f19919 = c5240;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19918) {
            case 0:
                C5240 c5240 = this.f19919;
                InterfaceC5260 interfaceC5260 = c5240.f19693;
                if (interfaceC5260 != null) {
                    c5240.m10294(interfaceC5260, this.f19917 ? null : (C5241) this.f19921, this.f19920);
                    c5240.m10297();
                    return;
                } else {
                    C5344 c5344 = ((C5322) ((ᵎﹶ) c5240).ʾˋ).f20193;
                    C5322.m10556(c5344);
                    c5344.f20343.m10217("Discarding data. Failed to set user property");
                    return;
                }
            case 1:
                C5240 c52402 = this.f19919;
                InterfaceC5260 interfaceC52602 = c52402.f19693;
                if (interfaceC52602 != null) {
                    c52402.m10294(interfaceC52602, this.f19917 ? null : (C5279) this.f19921, this.f19920);
                    c52402.m10297();
                    return;
                } else {
                    C5344 c53442 = ((C5322) ((ᵎﹶ) c52402).ʾˋ).f20193;
                    C5322.m10556(c53442);
                    c53442.f20343.m10217("Discarding data. Failed to send event to service");
                    return;
                }
            default:
                C5240 c52403 = this.f19919;
                InterfaceC5260 interfaceC52603 = c52403.f19693;
                if (interfaceC52603 != null) {
                    c52403.m10294(interfaceC52603, this.f19917 ? null : (C5287) this.f19921, this.f19920);
                    c52403.m10297();
                    return;
                } else {
                    C5344 c53443 = ((C5322) ((ᵎﹶ) c52403).ʾˋ).f20193;
                    C5322.m10556(c53443);
                    c53443.f20343.m10217("Discarding data. Failed to send conditional user property to service");
                    return;
                }
        }
    }
}

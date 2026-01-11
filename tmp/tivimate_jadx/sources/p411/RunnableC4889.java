package p411;

import p003.C0779;
import p003.C0787;
import p003.C0789;
import p105.InterfaceC1922;
import p262.C3433;
import p305.AbstractC3712;
import p366.C4473;
import p392.C4644;
import p392.SurfaceHolderCallbackC4642;
import p457.InterfaceC5385;

/* renamed from: ﹳˎ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC4889 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ long f18233;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f18234;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f18235;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f18236;

    public /* synthetic */ RunnableC4889(C3433 c3433, Object obj, long j) {
        this.f18234 = 2;
        this.f18236 = c3433;
        this.f18235 = obj;
        this.f18233 = j;
    }

    public /* synthetic */ RunnableC4889(C4904 c4904, long j, String str, int i) {
        this.f18234 = i;
        this.f18236 = c4904;
        this.f18233 = j;
        this.f18235 = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f18234;
        long j = this.f18233;
        Object obj = this.f18235;
        Object obj2 = this.f18236;
        switch (i) {
            case 0:
                C4904 c4904 = (C4904) obj2;
                c4904.f18295.f8650.m5193(new RunnableC4889(c4904, this.f18233, (String) obj, 1));
                return;
            case 1:
                String str = (String) obj;
                C4894 c4894 = ((C4904) obj2).f18298;
                C4898 c4898 = c4894.f18257;
                if (c4898 == null || !c4898.f18272.get()) {
                    ((InterfaceC1922) c4894.f18247.f7668).mo4861(str, j);
                    return;
                }
                return;
            default:
                InterfaceC5385 interfaceC5385 = (InterfaceC5385) ((C3433) obj2).f13456;
                String str2 = AbstractC3712.f14481;
                C4644 c4644 = ((SurfaceHolderCallbackC4642) interfaceC5385).f17344;
                C0779 c0779 = c4644.f17373;
                C0789 m2841 = c0779.m2841();
                c0779.m2848(m2841, 26, new C0787(m2841, obj, j));
                if (c4644.f17379 == obj) {
                    c4644.f17365.ᵎﹶ(26, new C4473(13));
                    return;
                }
                return;
        }
    }
}

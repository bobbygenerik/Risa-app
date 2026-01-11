package p340;

import kotlinx.coroutines.flow.internal.AbortFlowException;
import p126.InterfaceC2136;
import p152.C2448;

/* renamed from: ᵎˈ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4229 implements InterfaceC4256 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f15718;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C2448 f15719;

    public /* synthetic */ C4229(C2448 c2448, int i) {
        this.f15718 = i;
        this.f15719 = c2448;
    }

    @Override // p340.InterfaceC4256
    /* renamed from: ﹳٴ */
    public final Object mo3399(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f15718) {
            case 0:
                this.f15719.f9409 = obj;
                throw new AbortFlowException(this);
            default:
                this.f15719.f9409 = obj;
                throw new AbortFlowException(this);
        }
    }
}

package p328;

import android.util.AndroidRuntimeException;

/* renamed from: ᴵᵔ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4078 extends AbstractC4076 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C4069 f15543;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f15544;

    public /* synthetic */ C4078(C4069 c4069, int i) {
        this.f15544 = i;
        this.f15543 = c4069;
    }

    @Override // p328.InterfaceC4068
    /* renamed from: ʽ */
    public final void mo8278(AbstractC4084 abstractC4084) {
        switch (this.f15544) {
            case 0:
                C4069 c4069 = this.f15543;
                if (c4069.f15501.get(abstractC4084) == null) {
                    throw new AndroidRuntimeException("Error: animation ended is not in the node map");
                }
                ((C4075) c4069.f15501.get(abstractC4084)).f15530 = true;
                return;
            default:
                C4069 c40692 = this.f15543;
                if (c40692.f15501.get(abstractC4084) == null) {
                    throw new AndroidRuntimeException("Error: animation ended is not in the node map");
                }
                ((C4075) c40692.f15501.get(abstractC4084)).f15530 = true;
                return;
        }
    }
}

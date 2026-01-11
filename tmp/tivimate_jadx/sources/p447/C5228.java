package p447;

import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ʽʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5228 extends AbstractC5328 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ int f19659;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* synthetic */ C5240 f19660;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C5228(C5240 c5240, C5322 c5322, int i) {
        super(c5322);
        this.f19659 = i;
        this.f19660 = c5240;
    }

    @Override // p447.AbstractC5328
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo10248() {
        switch (this.f19659) {
            case 0:
                C5240 c5240 = this.f19660;
                c5240.m10252();
                if (c5240.m10308()) {
                    C5344 c5344 = ((C5322) ((ᵎﹶ) c5240).ʾˋ).f20193;
                    C5322.m10556(c5344);
                    c5344.f20350.m10217("Inactivity, disconnecting from the service");
                    c5240.m10298();
                    return;
                }
                return;
            default:
                C5344 c53442 = ((C5322) ((ᵎﹶ) this.f19660).ʾˋ).f20193;
                C5322.m10556(c53442);
                c53442.f20348.m10217("Tasks have been queued for a long time");
                return;
        }
    }
}

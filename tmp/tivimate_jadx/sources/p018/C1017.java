package p018;

import java.util.ArrayList;

/* renamed from: ʼʼ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1017 extends C1023 {

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f4027;

    public C1017(AbstractC1014 abstractC1014) {
        super(abstractC1014);
        if (abstractC1014 instanceof C1016) {
            this.f4051 = 2;
        } else {
            this.f4051 = 3;
        }
    }

    @Override // p018.C1023
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo3329(int i) {
        if (this.f4049) {
            return;
        }
        this.f4049 = true;
        this.f4053 = i;
        ArrayList arrayList = this.f4052;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            InterfaceC1012 interfaceC1012 = (InterfaceC1012) obj;
            interfaceC1012.mo3307(interfaceC1012);
        }
    }
}

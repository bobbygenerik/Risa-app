package p052;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

/* renamed from: ʽᴵ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1408 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f5514;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f5515;

    public C1408(int i) {
        switch (i) {
            case 1:
                this.f5515 = new ArrayList();
                this.f5514 = 128;
                return;
            default:
                this.f5515 = new ArrayList();
                this.f5514 = 0;
                return;
        }
    }

    public C1408(ArrayList arrayList) {
        this.f5515 = arrayList;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public synchronized List m4148() {
        return DesugarCollections.unmodifiableList(new ArrayList(this.f5515));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m4149(InterfaceC1419 interfaceC1419) {
        if (interfaceC1419 == null) {
            throw new IllegalArgumentException("factory == null");
        }
        int i = this.f5514;
        this.f5514 = i + 1;
        this.f5515.add(i, interfaceC1419);
    }
}

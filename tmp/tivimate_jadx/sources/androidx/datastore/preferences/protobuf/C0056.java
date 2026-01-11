package androidx.datastore.preferences.protobuf;

import android.support.v4.media.session.AbstractC0001;

/* renamed from: androidx.datastore.preferences.protobuf.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0056 implements InterfaceC0006 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C0024 f486;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC0014 f487;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0063 f488;

    public C0056(AbstractC0014 abstractC0014, C0024 c0024, AbstractC0063 abstractC0063) {
        this.f487 = abstractC0014;
        c0024.getClass();
        this.f486 = c0024;
        this.f488 = abstractC0063;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ʼˎ */
    public final int mo170(AbstractC0003 abstractC0003) {
        ((C0052) this.f487).getClass();
        C0015 c0015 = abstractC0003.unknownFields;
        int i = c0015.f392;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < c0015.f395; i3++) {
            int i4 = c0015.f394[i3] >>> 3;
            i2 += C0067.m380(3, (C0054) c0015.f391[i3]) + C0067.m383(i4) + C0067.m379(2) + (C0067.m379(1) * 2);
        }
        c0015.f392 = i2;
        return i2;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ʽ */
    public final boolean mo171(Object obj) {
        this.f486.getClass();
        AbstractC0001.m3(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ˈ */
    public final AbstractC0003 mo172() {
        AbstractC0063 abstractC0063 = this.f488;
        return abstractC0063 instanceof AbstractC0003 ? ((AbstractC0003) abstractC0063).m148() : ((AbstractC0031) ((AbstractC0003) abstractC0063).mo149(5)).m243();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ˑﹳ */
    public final void mo173(Object obj, C0010 c0010) {
        this.f486.getClass();
        AbstractC0001.m3(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ᵎﹶ */
    public final boolean mo174(AbstractC0003 abstractC0003, AbstractC0003 abstractC00032) {
        C0052 c0052 = (C0052) this.f487;
        c0052.getClass();
        C0015 c0015 = abstractC0003.unknownFields;
        c0052.getClass();
        return c0015.equals(abstractC00032.unknownFields);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ᵔᵢ */
    public final void mo175(Object obj, C0043 c0043, C0055 c0055) {
        this.f487.mo220(obj);
        this.f486.getClass();
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ⁱˊ */
    public final void mo176(Object obj) {
        ((C0052) this.f487).getClass();
        C0015 c0015 = ((AbstractC0003) obj).unknownFields;
        if (c0015.f393) {
            c0015.f393 = false;
        }
        this.f486.getClass();
        AbstractC0001.m3(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ﹳٴ */
    public final void mo177(Object obj, Object obj2) {
        AbstractC0038.m272(this.f487, obj, obj2);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ﾞᴵ */
    public final int mo178(AbstractC0003 abstractC0003) {
        ((C0052) this.f487).getClass();
        return abstractC0003.unknownFields.hashCode();
    }
}

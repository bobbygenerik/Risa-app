package androidx.datastore.preferences.protobuf;

import com.google.android.gms.internal.measurement.C0285;
import com.google.android.gms.internal.measurement.C0328;
import j$.util.Objects;
import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0048 implements Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f449;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f450;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Iterator f451;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f452;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ AbstractMap f453;

    public C0048(C0062 c0062) {
        this.f450 = 0;
        this.f453 = c0062;
        this.f452 = -1;
    }

    public /* synthetic */ C0048(C0328 c0328) {
        this.f450 = 1;
        Objects.requireNonNull(c0328);
        this.f453 = c0328;
        this.f452 = -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f450) {
            case 0:
                int i = this.f452 + 1;
                C0062 c0062 = (C0062) this.f453;
                if (i >= c0062.f504.size()) {
                    return !c0062.f506.isEmpty() && m322().hasNext();
                }
                return true;
            default:
                int i2 = this.f452 + 1;
                C0328 c0328 = (C0328) this.f453;
                if (i2 >= c0328.f1976) {
                    return !c0328.f1972.isEmpty() && m321().hasNext();
                }
                return true;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f450) {
            case 0:
                this.f449 = true;
                int i = this.f452 + 1;
                this.f452 = i;
                C0062 c0062 = (C0062) this.f453;
                return i < c0062.f504.size() ? (Map.Entry) c0062.f504.get(this.f452) : (Map.Entry) m322().next();
            default:
                this.f449 = true;
                int i2 = this.f452 + 1;
                this.f452 = i2;
                C0328 c0328 = (C0328) this.f453;
                return i2 < c0328.f1976 ? (C0285) c0328.f1973[i2] : (Map.Entry) m321().next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.f450;
        AbstractMap abstractMap = this.f453;
        switch (i) {
            case 0:
                C0062 c0062 = (C0062) abstractMap;
                if (!this.f449) {
                    throw new IllegalStateException("remove() was called before next()");
                }
                this.f449 = false;
                int i2 = C0062.f502;
                c0062.m377();
                if (this.f452 >= c0062.f504.size()) {
                    m322().remove();
                    return;
                }
                int i3 = this.f452;
                this.f452 = i3 - 1;
                c0062.m376(i3);
                return;
            default:
                if (!this.f449) {
                    throw new IllegalStateException("remove() was called before next()");
                }
                this.f449 = false;
                C0328 c0328 = (C0328) abstractMap;
                c0328.m1579();
                int i4 = this.f452;
                if (i4 >= c0328.f1976) {
                    m321().remove();
                    return;
                } else {
                    this.f452 = i4 - 1;
                    c0328.m1574(i4);
                    return;
                }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Iterator m321() {
        if (this.f451 == null) {
            this.f451 = ((C0328) this.f453).f1972.entrySet().iterator();
        }
        return this.f451;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Iterator m322() {
        if (this.f451 == null) {
            this.f451 = ((C0062) this.f453).f506.entrySet().iterator();
        }
        return this.f451;
    }
}

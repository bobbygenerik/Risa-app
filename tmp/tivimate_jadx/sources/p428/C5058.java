package p428;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p055.C1463;
import p055.C1481;
import p055.C1493;
import p420.C4936;

/* renamed from: ﹶʽ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5058 extends C1481 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean f19032;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final boolean f19033;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f19034;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f19035;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean f19036;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final SparseArray f19037;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean f19038;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f19039;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final SparseBooleanArray f19040;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final boolean f19041;

    public C5058() {
        this.f19037 = new SparseArray();
        this.f19040 = new SparseBooleanArray();
        this.f19032 = true;
        this.f19038 = true;
        this.f19036 = true;
        this.f19033 = true;
        this.f19041 = true;
        this.f19035 = true;
        this.f19039 = false;
        this.f19034 = true;
    }

    public C5058(C5063 c5063) {
        m4284(c5063);
        this.f19032 = c5063.f19055;
        this.f19038 = c5063.f19061;
        this.f19036 = c5063.f19059;
        this.f19033 = c5063.f19056;
        this.f19041 = c5063.f19064;
        this.f19035 = c5063.f19058;
        this.f19039 = c5063.f19062;
        this.f19034 = c5063.f19057;
        SparseArray sparseArray = c5063.f19060;
        SparseArray sparseArray2 = new SparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
        }
        this.f19037 = sparseArray2;
        this.f19040 = c5063.f19063.clone();
    }

    @Override // p055.C1481
    /* renamed from: ʼˎ */
    public final C1481 mo4283(int i, boolean z) {
        super.mo4283(i, z);
        return this;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m9963(int i) {
        SparseArray sparseArray = this.f19037;
        Map map = (Map) sparseArray.get(i);
        if (map == null || map.isEmpty()) {
            return;
        }
        sparseArray.remove(i);
    }

    @Override // p055.C1481
    /* renamed from: ˈ */
    public final C1481 mo4285() {
        this.f5802 = -3;
        return this;
    }

    @Override // p055.C1481
    /* renamed from: ˑﹳ */
    public final C1481 mo4286(C1493 c1493) {
        super.mo4286(c1493);
        return this;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m9964(Set set) {
        this.f5787.clear();
        this.f5787.addAll(set);
    }

    @Override // p055.C1481
    /* renamed from: ᵎﹶ */
    public final C1481 mo4287(String[] strArr) {
        super.mo4287(strArr);
        return this;
    }

    @Override // p055.C1481
    /* renamed from: ᵔᵢ */
    public final C1481 mo4288() {
        this.f5799 = false;
        return this;
    }

    @Override // p055.C1481
    /* renamed from: ⁱˊ */
    public final C1481 mo4289(int i) {
        super.mo4289(i);
        return this;
    }

    @Override // p055.C1481
    /* renamed from: ﹳٴ */
    public final C1463 mo4290() {
        return new C5063(this);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m9965(int i, C4936 c4936, C5071 c5071) {
        SparseArray sparseArray = this.f19037;
        Map map = (Map) sparseArray.get(i);
        if (map == null) {
            map = new HashMap();
            sparseArray.put(i, map);
        }
        if (map.containsKey(c4936) && Objects.equals(map.get(c4936), c5071)) {
            return;
        }
        map.put(c4936, c5071);
    }

    @Override // p055.C1481
    /* renamed from: ﾞᴵ */
    public final C1481 mo4291() {
        super.mo4291();
        return this;
    }
}

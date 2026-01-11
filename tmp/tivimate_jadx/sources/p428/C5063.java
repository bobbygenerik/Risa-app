package p428;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import j$.util.Objects;
import java.util.Map;
import p035.AbstractC1220;
import p055.C1463;
import p055.C1481;
import p305.AbstractC3712;
import p420.C4936;

/* renamed from: ﹶʽ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5063 extends C1463 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final C5063 f19054 = new C5063(new C5058());

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean f19055;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final boolean f19056;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f19057;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f19058;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean f19059;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final SparseArray f19060;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean f19061;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean f19062;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final SparseBooleanArray f19063;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final boolean f19064;

    static {
        AbstractC1220.m3785(1000, 1001, 1002, 1003, 1004);
        AbstractC1220.m3785(1005, 1006, 1007, 1008, 1009);
        AbstractC1220.m3785(1010, 1011, 1012, 1013, 1014);
        AbstractC3712.m7802(1015);
        AbstractC3712.m7802(1016);
        AbstractC3712.m7802(1017);
        AbstractC3712.m7802(1018);
    }

    public C5063(C5058 c5058) {
        super(c5058);
        this.f19055 = c5058.f19032;
        this.f19061 = c5058.f19038;
        this.f19059 = c5058.f19036;
        this.f19056 = c5058.f19033;
        this.f19064 = c5058.f19041;
        this.f19058 = c5058.f19035;
        this.f19062 = c5058.f19039;
        this.f19057 = c5058.f19034;
        this.f19060 = c5058.f19037;
        this.f19063 = c5058.f19040;
    }

    @Override // p055.C1463
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5063.class == obj.getClass()) {
            C5063 c5063 = (C5063) obj;
            if (super.equals(c5063) && this.f19055 == c5063.f19055 && this.f19061 == c5063.f19061 && this.f19059 == c5063.f19059 && this.f19056 == c5063.f19056 && this.f19064 == c5063.f19064 && this.f19058 == c5063.f19058 && this.f19062 == c5063.f19062 && this.f19057 == c5063.f19057) {
                SparseBooleanArray sparseBooleanArray = c5063.f19063;
                SparseBooleanArray sparseBooleanArray2 = this.f19063;
                int size = sparseBooleanArray2.size();
                if (sparseBooleanArray.size() == size) {
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            SparseArray sparseArray = c5063.f19060;
                            SparseArray sparseArray2 = this.f19060;
                            int size2 = sparseArray2.size();
                            if (sparseArray.size() == size2) {
                                for (int i2 = 0; i2 < size2; i2++) {
                                    int indexOfKey = sparseArray.indexOfKey(sparseArray2.keyAt(i2));
                                    if (indexOfKey >= 0) {
                                        Map map = (Map) sparseArray2.valueAt(i2);
                                        Map map2 = (Map) sparseArray.valueAt(indexOfKey);
                                        if (map2.size() == map.size()) {
                                            for (Map.Entry entry : map.entrySet()) {
                                                C4936 c4936 = (C4936) entry.getKey();
                                                if (map2.containsKey(c4936) && Objects.equals(entry.getValue(), map2.get(c4936))) {
                                                }
                                            }
                                        }
                                    }
                                }
                                return true;
                            }
                        } else {
                            if (sparseBooleanArray.indexOfKey(sparseBooleanArray2.keyAt(i)) < 0) {
                                break;
                            }
                            i++;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // p055.C1463
    public final int hashCode() {
        return (((((((((((((((((super.hashCode() + 31) * 31) + (this.f19055 ? 1 : 0)) * 961) + (this.f19061 ? 1 : 0)) * 961) + (this.f19059 ? 1 : 0)) * 28629151) + (this.f19056 ? 1 : 0)) * 31) + (this.f19064 ? 1 : 0)) * 31) + (this.f19058 ? 1 : 0)) * 31) + (this.f19062 ? 1 : 0)) * 31) + (this.f19057 ? 1 : 0)) * 31;
    }

    @Override // p055.C1463
    /* renamed from: ﹳٴ */
    public final C1481 mo4249() {
        return new C5058(this);
    }
}

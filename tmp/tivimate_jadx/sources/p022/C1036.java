package p022;

import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: ʼˊ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1036 extends LinkedHashMap {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f4069 = 0;

    public C1036() {
        super(64, 0.75f, true);
    }

    public /* synthetic */ C1036(int i, float f, boolean z) {
        super(i, f, z);
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        switch (this.f4069) {
            case 0:
                return size() > 32;
            default:
                return size() > 4;
        }
    }
}

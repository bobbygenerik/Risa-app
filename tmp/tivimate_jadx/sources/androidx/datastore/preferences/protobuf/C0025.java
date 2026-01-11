package androidx.datastore.preferences.protobuf;

import com.google.android.gms.internal.measurement.C0328;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import p255.C3354;
import p255.C3359;

/* renamed from: androidx.datastore.preferences.protobuf.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0025 extends AbstractSet {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f410;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Map f411;

    public /* synthetic */ C0025(Map map, int i) {
        this.f410 = i;
        this.f411 = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        switch (this.f410) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                if (contains(entry)) {
                    return false;
                }
                ((C0062) this.f411).put((Comparable) entry.getKey(), entry.getValue());
                return true;
            case 1:
                Map.Entry entry2 = (Map.Entry) obj;
                if (contains(entry2)) {
                    return false;
                }
                ((C0328) this.f411).put((Comparable) entry2.getKey(), entry2.getValue());
                return true;
            default:
                return super.add(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        switch (this.f410) {
            case 0:
                ((C0062) this.f411).clear();
                return;
            case 1:
                ((C0328) this.f411).clear();
                return;
            default:
                super.clear();
                return;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        switch (this.f410) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                Object obj2 = ((C0062) this.f411).get(entry.getKey());
                Object value = entry.getValue();
                return obj2 == value || (obj2 != null && obj2.equals(value));
            case 1:
                Map.Entry entry2 = (Map.Entry) obj;
                Object obj3 = ((C0328) this.f411).get(entry2.getKey());
                Object value2 = entry2.getValue();
                if (obj3 != value2) {
                    return obj3 != null && obj3.equals(value2);
                }
                return true;
            default:
                return super.contains(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        switch (this.f410) {
            case 0:
                return new C0048((C0062) this.f411);
            case 1:
                return new C0048((C0328) this.f411);
            default:
                return new C3354((C3359) this.f411);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        switch (this.f410) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                if (!contains(entry)) {
                    return false;
                }
                ((C0062) this.f411).remove(entry.getKey());
                return true;
            case 1:
                Map.Entry entry2 = (Map.Entry) obj;
                if (!contains(entry2)) {
                    return false;
                }
                ((C0328) this.f411).remove(entry2.getKey());
                return true;
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f410) {
            case 0:
                return ((C0062) this.f411).size();
            case 1:
                return ((C0328) this.f411).size();
            default:
                return ((C3359) this.f411).f13167;
        }
    }
}

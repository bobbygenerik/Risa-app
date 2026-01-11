package p305;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p395.C4715;

/* renamed from: ᐧˎ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3726 implements Iterable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f14507 = new Object();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final HashMap f14509 = new HashMap();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Set f14506 = Collections.EMPTY_SET;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public List f14508 = Collections.EMPTY_LIST;

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterator it;
        synchronized (this.f14507) {
            it = this.f14508.iterator();
        }
        return it;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7834(C4715 c4715) {
        synchronized (this.f14507) {
            try {
                Integer num = (Integer) this.f14509.get(c4715);
                if (num == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList(this.f14508);
                arrayList.remove(c4715);
                this.f14508 = DesugarCollections.unmodifiableList(arrayList);
                if (num.intValue() == 1) {
                    this.f14509.remove(c4715);
                    HashSet hashSet = new HashSet(this.f14506);
                    hashSet.remove(c4715);
                    this.f14506 = DesugarCollections.unmodifiableSet(hashSet);
                } else {
                    this.f14509.put(c4715, Integer.valueOf(num.intValue() - 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m7835(C4715 c4715) {
        int intValue;
        synchronized (this.f14507) {
            try {
                intValue = this.f14509.containsKey(c4715) ? ((Integer) this.f14509.get(c4715)).intValue() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return intValue;
    }
}

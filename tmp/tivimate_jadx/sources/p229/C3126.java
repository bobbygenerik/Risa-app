package p229;

import androidx.lifecycle.AbstractC0196;
import androidx.lifecycle.C0180;
import androidx.lifecycle.ˊˋ;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: ˑʼ.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3126 extends AbstractC0196 {

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final ˊˋ f11944 = new ˊˋ(15);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f11947;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashMap f11949 = new HashMap();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashMap f11945 = new HashMap();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final HashMap f11946 = new HashMap();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f11950 = false;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f11948 = false;

    public C3126(boolean z) {
        this.f11947 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C3126.class == obj.getClass()) {
            C3126 c3126 = (C3126) obj;
            if (this.f11949.equals(c3126.f11949) && this.f11945.equals(c3126.f11945) && this.f11946.equals(c3126.f11946)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f11946.hashCode() + ((this.f11945.hashCode() + (this.f11949.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f11949.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f11945.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f11946.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m6858(String str, boolean z) {
        HashMap hashMap = this.f11945;
        C3126 c3126 = (C3126) hashMap.get(str);
        if (c3126 != null) {
            if (z) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(c3126.f11945.keySet());
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    c3126.m6860((String) obj, true);
                }
            }
            c3126.mo730();
            hashMap.remove(str);
        }
        HashMap hashMap2 = this.f11946;
        C0180 c0180 = (C0180) hashMap2.get(str);
        if (c0180 != null) {
            c0180.m706();
            hashMap2.remove(str);
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m6859(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        if (this.f11948) {
            if (C3085.m6654(2)) {
            }
        } else {
            if (this.f11949.remove(abstractComponentCallbacksC3123.f11929) == null || !C3085.m6654(2)) {
                return;
            }
            String str = "Updating retained Fragments: Removed " + abstractComponentCallbacksC3123;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m6860(String str, boolean z) {
        if (C3085.m6654(3)) {
            String str2 = "Clearing non-config state for saved state of Fragment " + str;
        }
        m6858(str, z);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m6861(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        if (C3085.m6654(3)) {
            String str = "Clearing non-config state for " + abstractComponentCallbacksC3123;
        }
        m6858(abstractComponentCallbacksC3123.f11929, z);
    }

    @Override // androidx.lifecycle.AbstractC0196
    /* renamed from: ﾞᴵ */
    public final void mo730() {
        if (C3085.m6654(3)) {
            String str = "onCleared called for " + this;
        }
        this.f11950 = true;
    }
}

package p179;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import p010.AbstractC0844;
import p186.AbstractC2823;

/* renamed from: ˋˋ.ʼـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2673 {

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static final List f10173 = Collections.EMPTY_LIST;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public AbstractC2727 f10174;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final View f10176;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public RecyclerView f10182;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int f10185;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public WeakReference f10187;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f10175 = -1;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f10179 = -1;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public long f10188 = -1;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f10181 = -1;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f10186 = -1;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public AbstractC2673 f10180 = null;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public AbstractC2673 f10190 = null;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public ArrayList f10189 = null;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public List f10191 = null;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f10177 = 0;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public C2666 f10192 = null;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public boolean f10178 = false;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public int f10184 = 0;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public int f10183 = -1;

    public AbstractC2673(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.f10176 = view;
    }

    public final String toString() {
        StringBuilder m3017 = AbstractC0844.m3017(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
        m3017.append(Integer.toHexString(hashCode()));
        m3017.append(" position=");
        m3017.append(this.f10175);
        m3017.append(" id=");
        m3017.append(this.f10188);
        m3017.append(", oldPos=");
        m3017.append(this.f10179);
        m3017.append(", pLpos:");
        m3017.append(this.f10186);
        StringBuilder sb = new StringBuilder(m3017.toString());
        if (m6012()) {
            sb.append(" scrap ");
            sb.append(this.f10178 ? "[changeScrap]" : "[attachedScrap]");
        }
        if (m6015()) {
            sb.append(" invalid");
        }
        if (!m6013()) {
            sb.append(" unbound");
        }
        if ((this.f10185 & 2) != 0) {
            sb.append(" update");
        }
        if (m6007()) {
            sb.append(" removed");
        }
        if (m6016()) {
            sb.append(" ignored");
        }
        if (m6020()) {
            sb.append(" tmpDetached");
        }
        if (!m6004()) {
            sb.append(" not recyclable(" + this.f10177 + ")");
        }
        if ((this.f10185 & 512) != 0 || m6015()) {
            sb.append(" undefined adapter position");
        }
        if (this.f10176.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m6004() {
        if ((this.f10185 & 16) != 0) {
            return false;
        }
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        return !this.f10176.hasTransientState();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m6005(boolean z) {
        int i = this.f10177;
        int i2 = z ? i - 1 : i + 1;
        this.f10177 = i2;
        if (i2 < 0) {
            this.f10177 = 0;
            if (RecyclerView.f1450) {
                throw new RuntimeException("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            }
            String str = "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this;
        } else if (!z && i2 == 1) {
            this.f10185 |= 16;
        } else if (z && i2 == 0) {
            this.f10185 &= -17;
        }
        if (RecyclerView.f1455) {
            String str2 = "setIsRecyclable val:" + z + ":" + this;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m6006() {
        RecyclerView recyclerView;
        AbstractC2727 adapter;
        int m977;
        if (this.f10174 == null || (recyclerView = this.f10182) == null || (adapter = recyclerView.getAdapter()) == null || (m977 = this.f10182.m977(this)) == -1 || this.f10174 != adapter) {
            return -1;
        }
        return m977;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m6007() {
        return (this.f10185 & 8) != 0;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m6008() {
        int i = this.f10186;
        return i == -1 ? this.f10175 : i;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final boolean m6009() {
        return (this.f10185 & 2) != 0;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m6010() {
        if (RecyclerView.f1450 && m6020()) {
            throw new IllegalStateException("Attempting to reset temp-detached ViewHolder: " + this + ". ViewHolders should be fully detached before resetting.");
        }
        this.f10185 = 0;
        this.f10175 = -1;
        this.f10179 = -1;
        this.f10188 = -1L;
        this.f10186 = -1;
        this.f10177 = 0;
        this.f10180 = null;
        this.f10190 = null;
        ArrayList arrayList = this.f10189;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.f10185 &= -1025;
        this.f10184 = 0;
        this.f10183 = -1;
        RecyclerView.m929(this);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final List m6011() {
        ArrayList arrayList;
        return ((this.f10185 & 1024) != 0 || (arrayList = this.f10189) == null || arrayList.size() == 0) ? f10173 : this.f10191;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m6012() {
        return this.f10192 != null;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m6013() {
        return (this.f10185 & 1) != 0;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m6014(int i, boolean z) {
        if (this.f10179 == -1) {
            this.f10179 = this.f10175;
        }
        if (this.f10186 == -1) {
            this.f10186 = this.f10175;
        }
        if (z) {
            this.f10186 += i;
        }
        this.f10175 += i;
        View view = this.f10176;
        if (view.getLayoutParams() != null) {
            ((C2700) view.getLayoutParams()).f10280 = true;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m6015() {
        return (this.f10185 & 4) != 0;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m6016() {
        return (this.f10185 & 128) != 0;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m6017() {
        RecyclerView recyclerView = this.f10182;
        if (recyclerView == null) {
            return -1;
        }
        return recyclerView.m977(this);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6018(int i) {
        this.f10185 = i | this.f10185;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m6019() {
        return (this.f10185 & 32) != 0;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean m6020() {
        return (this.f10185 & 256) != 0;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m6021() {
        View view = this.f10176;
        return (view.getParent() == null || view.getParent() == this.f10182) ? false : true;
    }
}

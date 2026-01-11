package p230;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import androidx.leanback.widget.C0144;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p186.C2803;
import p219.AbstractC3024;
import p255.AbstractC3355;
import p255.C3352;
import p255.C3359;
import p255.C3368;
import ʽٴ.ˈ;
import ˏˆ.ﹳٴ;
import ᵎˉ.ⁱˊ;

/* renamed from: ˑʿ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3143 implements Cloneable {

    /* renamed from: ʿ, reason: contains not printable characters */
    public long f12032;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public C3183 f12033;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public ArrayList f12034;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public ˈ f12048;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public long f12051;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public ArrayList f12053;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public InterfaceC3165[] f12054;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public static final Animator[] f12027 = new Animator[0];

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static final int[] f12026 = {2, 1, 3, 4};

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public static final ⁱˊ f12025 = new Object();

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public static final ThreadLocal f12028 = new ThreadLocal();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f12031 = getClass().getName();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f12047 = -1;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public long f12030 = -1;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public TimeInterpolator f12036 = null;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ArrayList f12049 = new ArrayList();

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final ArrayList f12040 = new ArrayList();

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ArrayList f12046 = null;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public ﹳٴ f12039 = new ﹳٴ(18);

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public ﹳٴ f12052 = new ﹳٴ(18);

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C3170 f12045 = null;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final int[] f12050 = f12026;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final ArrayList f12035 = new ArrayList();

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public Animator[] f12043 = f12027;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public int f12042 = 0;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f12041 = false;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public boolean f12029 = false;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public AbstractC3143 f12044 = null;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public ArrayList f12055 = null;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public ArrayList f12037 = new ArrayList();

    /* renamed from: ˉـ, reason: contains not printable characters */
    public ⁱˊ f12038 = f12025;

    /* JADX WARN: Type inference failed for: r1v2, types: [יـ.ﹳᐧ, יـ.ˑﹳ, java.lang.Object] */
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static C3359 m6893() {
        ThreadLocal threadLocal = f12028;
        C3359 c3359 = (C3359) threadLocal.get();
        if (c3359 != null) {
            return c3359;
        }
        ?? c3368 = new C3368(0);
        threadLocal.set(c3368);
        return c3368;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static boolean m6894(C3171 c3171, C3171 c31712, String str) {
        Object obj = c3171.f12115.get(str);
        Object obj2 = c31712.f12115.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m6895(ﹳٴ r11, View view, C3171 c3171) {
        C3359 c3359 = (C3359) r11.ᴵˊ;
        C3359 c33592 = (C3359) r11.ᴵᵔ;
        SparseArray sparseArray = (SparseArray) r11.ʽʽ;
        C3352 c3352 = (C3352) r11.ˈٴ;
        c3359.put(view, c3171);
        int id = view.getId();
        if (id >= 0) {
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        String m6176 = AbstractC2776.m6176(view);
        if (m6176 != null) {
            if (c33592.containsKey(m6176)) {
                c33592.put(m6176, null);
            } else {
                c33592.put(m6176, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (c3352.f13112) {
                    int i = c3352.f13113;
                    long[] jArr = c3352.f13114;
                    Object[] objArr = c3352.f13111;
                    int i2 = 0;
                    for (int i3 = 0; i3 < i; i3++) {
                        Object obj = objArr[i3];
                        if (obj != AbstractC3355.f13126) {
                            if (i3 != i2) {
                                jArr[i2] = jArr[i3];
                                objArr[i2] = obj;
                                objArr[i3] = null;
                            }
                            i2++;
                        }
                    }
                    c3352.f13112 = false;
                    c3352.f13113 = i2;
                }
                if (AbstractC3024.m6553(c3352.f13114, c3352.f13113, itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    c3352.m7169(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) c3352.m7172(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    c3352.m7169(itemIdAtPosition, null);
                }
            }
        }
    }

    public void cancel() {
        ArrayList arrayList = this.f12035;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f12043);
        this.f12043 = f12027;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.cancel();
        }
        this.f12043 = animatorArr;
        m6906(this, InterfaceC3149.f12063, false);
    }

    public final String toString() {
        return mo6917("");
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public boolean mo6896() {
        return !this.f12035.isEmpty();
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final void m6897() {
        if (this.f12042 == 0) {
            m6922(InterfaceC3149.f12065);
            this.f12029 = false;
        }
        this.f12042++;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public abstract void mo6898(C3171 c3171);

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m6899() {
        int i = this.f12042 - 1;
        this.f12042 = i;
        if (i == 0) {
            m6922(InterfaceC3149.f12064);
            for (int i2 = 0; i2 < ((C3352) this.f12039.ˈٴ).m7170(); i2++) {
                View view = (View) ((C3352) this.f12039.ˈٴ).m7173(i2);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i3 = 0; i3 < ((C3352) this.f12052.ˈٴ).m7170(); i3++) {
                View view2 = (View) ((C3352) this.f12052.ˈٴ).m7173(i3);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.f12029 = true;
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final AbstractC3143 m6900() {
        C3170 c3170 = this.f12045;
        return c3170 != null ? c3170.m6900() : this;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean mo6901(C3171 c3171, C3171 c31712) {
        if (c3171 != null && c31712 != null) {
            String[] mo6916 = mo6916();
            if (mo6916 != null) {
                for (String str : mo6916) {
                    if (m6894(c3171, c31712, str)) {
                        return true;
                    }
                }
            } else {
                Iterator it = c3171.f12115.keySet().iterator();
                while (it.hasNext()) {
                    if (m6894(c3171, c31712, (String) it.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final C3171 m6902(View view, boolean z) {
        C3170 c3170 = this.f12045;
        if (c3170 != null) {
            return c3170.m6902(view, z);
        }
        return (C3171) ((C3359) (z ? this.f12039 : this.f12052).ᴵˊ).get(view);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m6903(ViewGroup viewGroup, boolean z) {
        m6920(z);
        ArrayList arrayList = this.f12049;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f12040;
        if (size <= 0 && arrayList2.size() <= 0) {
            m6934(viewGroup, z);
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            View findViewById = viewGroup.findViewById(((Integer) arrayList.get(i)).intValue());
            if (findViewById != null) {
                C3171 c3171 = new C3171(findViewById);
                if (z) {
                    mo6898(c3171);
                } else {
                    mo6914(c3171);
                }
                c3171.f12113.add(this);
                mo6928(c3171);
                if (z) {
                    m6895(this.f12039, findViewById, c3171);
                } else {
                    m6895(this.f12052, findViewById, c3171);
                }
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            View view = (View) arrayList2.get(i2);
            C3171 c31712 = new C3171(view);
            if (z) {
                mo6898(c31712);
            } else {
                mo6914(c31712);
            }
            c31712.f12113.add(this);
            mo6928(c31712);
            if (z) {
                m6895(this.f12039, view, c31712);
            } else {
                m6895(this.f12052, view, c31712);
            }
        }
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public void mo6904(long j) {
        this.f12030 = j;
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public void mo6905(TimeInterpolator timeInterpolator) {
        this.f12036 = timeInterpolator;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m6906(AbstractC3143 abstractC3143, InterfaceC3149 interfaceC3149, boolean z) {
        AbstractC3143 abstractC31432 = this.f12044;
        if (abstractC31432 != null) {
            abstractC31432.m6906(abstractC3143, interfaceC3149, z);
        }
        ArrayList arrayList = this.f12055;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.f12055.size();
        InterfaceC3165[] interfaceC3165Arr = this.f12054;
        if (interfaceC3165Arr == null) {
            interfaceC3165Arr = new InterfaceC3165[size];
        }
        this.f12054 = null;
        InterfaceC3165[] interfaceC3165Arr2 = (InterfaceC3165[]) this.f12055.toArray(interfaceC3165Arr);
        for (int i = 0; i < size; i++) {
            interfaceC3149.mo5681(interfaceC3165Arr2[i], abstractC3143, z);
            interfaceC3165Arr2[i] = null;
        }
        this.f12054 = interfaceC3165Arr2;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public Animator mo6907(ViewGroup viewGroup, C3171 c3171, C3171 c31712) {
        return null;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public AbstractC3143 mo6908(InterfaceC3165 interfaceC3165) {
        AbstractC3143 abstractC3143;
        ArrayList arrayList = this.f12055;
        if (arrayList != null) {
            if (!arrayList.remove(interfaceC3165) && (abstractC3143 = this.f12044) != null) {
                abstractC3143.mo6908(interfaceC3165);
            }
            if (this.f12055.size() == 0) {
                this.f12055 = null;
            }
        }
        return this;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public void mo6909(View view) {
        if (this.f12029) {
            return;
        }
        ArrayList arrayList = this.f12035;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f12043);
        this.f12043 = f12027;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.pause();
        }
        this.f12043 = animatorArr;
        m6906(this, InterfaceC3149.f12062, false);
        this.f12041 = true;
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public void mo6910(long j) {
        this.f12047 = j;
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public void mo6911() {
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final C3171 m6912(View view, boolean z) {
        C3170 c3170 = this.f12045;
        if (c3170 != null) {
            return c3170.m6912(view, z);
        }
        ArrayList arrayList = z ? this.f12053 : this.f12034;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            C3171 c3171 = (C3171) arrayList.get(i);
            if (c3171 == null) {
                return null;
            }
            if (c3171.f12114 == view) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return (C3171) (z ? this.f12034 : this.f12053).get(i);
        }
        return null;
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public void mo6913(ⁱˊ r1) {
        if (r1 == null) {
            this.f12038 = f12025;
        } else {
            this.f12038 = r1;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract void mo6914(C3171 c3171);

    /* renamed from: יـ, reason: contains not printable characters */
    public void mo6915(ViewGroup viewGroup) {
        C3359 m6893 = m6893();
        int i = m6893.f13167;
        if (viewGroup == null || i == 0) {
            return;
        }
        WindowId windowId = viewGroup.getWindowId();
        C3359 c3359 = new C3359(m6893);
        m6893.clear();
        for (int i2 = i - 1; i2 >= 0; i2--) {
            C3158 c3158 = (C3158) c3359.m7220(i2);
            if (c3158.f12087 != null && windowId.equals(c3158.f12084)) {
                ((Animator) c3359.m7225(i2)).end();
            }
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public String[] mo6916() {
        return null;
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public String mo6917(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.f12030 != -1) {
            sb.append("dur(");
            sb.append(this.f12030);
            sb.append(") ");
        }
        if (this.f12047 != -1) {
            sb.append("dly(");
            sb.append(this.f12047);
            sb.append(") ");
        }
        if (this.f12036 != null) {
            sb.append("interp(");
            sb.append(this.f12036);
            sb.append(") ");
        }
        ArrayList arrayList = this.f12049;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f12040;
        if (size > 0 || arrayList2.size() > 0) {
            sb.append("tgts(");
            if (arrayList.size() > 0) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList.get(i));
                }
            }
            if (arrayList2.size() > 0) {
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList2.get(i2));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public void mo6918(View view) {
        if (this.f12041) {
            if (!this.f12029) {
                ArrayList arrayList = this.f12035;
                int size = arrayList.size();
                Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f12043);
                this.f12043 = f12027;
                for (int i = size - 1; i >= 0; i--) {
                    Animator animator = animatorArr[i];
                    animatorArr[i] = null;
                    animator.resume();
                }
                this.f12043 = animatorArr;
                m6906(this, InterfaceC3149.f12061, false);
            }
            this.f12041 = false;
        }
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public void mo6919() {
        C3359 m6893 = m6893();
        this.f12032 = 0L;
        for (int i = 0; i < this.f12037.size(); i++) {
            Animator animator = (Animator) this.f12037.get(i);
            C3158 c3158 = (C3158) m6893.get(animator);
            if (animator != null && c3158 != null) {
                Animator animator2 = c3158.f12088;
                long j = this.f12030;
                if (j >= 0) {
                    animator2.setDuration(j);
                }
                long j2 = this.f12047;
                if (j2 >= 0) {
                    animator2.setStartDelay(animator2.getStartDelay() + j2);
                }
                TimeInterpolator timeInterpolator = this.f12036;
                if (timeInterpolator != null) {
                    animator2.setInterpolator(timeInterpolator);
                }
                this.f12035.add(animator);
                this.f12032 = Math.max(this.f12032, AbstractC3146.m6940(animator));
            }
        }
        this.f12037.clear();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m6920(boolean z) {
        if (z) {
            ((C3359) this.f12039.ᴵˊ).clear();
            ((SparseArray) this.f12039.ʽʽ).clear();
            ((C3352) this.f12039.ˈٴ).m7175();
        } else {
            ((C3359) this.f12052.ᴵˊ).clear();
            ((SparseArray) this.f12052.ʽʽ).clear();
            ((C3352) this.f12052.ˈٴ).m7175();
        }
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean m6921(View view) {
        int id = view.getId();
        ArrayList arrayList = this.f12049;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f12040;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m6922(InterfaceC3149 interfaceC3149) {
        m6906(this, interfaceC3149, false);
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public void mo6923() {
        m6897();
        C3359 m6893 = m6893();
        ArrayList arrayList = this.f12037;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Animator animator = (Animator) obj;
            if (m6893.containsKey(animator)) {
                m6897();
                if (animator != null) {
                    animator.addListener(new C2803(this, m6893));
                    long j = this.f12030;
                    if (j >= 0) {
                        animator.setDuration(j);
                    }
                    long j2 = this.f12047;
                    if (j2 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j2);
                    }
                    TimeInterpolator timeInterpolator = this.f12036;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new C0144(6, this));
                    animator.start();
                }
            }
        }
        this.f12037.clear();
        m6899();
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public void mo6924(View view) {
        this.f12040.remove(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.Object, ˑʿ.ˉˆ] */
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public void mo6925(ViewGroup viewGroup, ﹳٴ r21, ﹳٴ r22, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        boolean z;
        View view;
        C3171 c3171;
        Animator animator;
        C3171 c31712;
        C3359 m6893 = m6893();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        boolean z2 = m6900().f12033 != null;
        int i2 = 0;
        while (i2 < size) {
            C3171 c31713 = (C3171) arrayList.get(i2);
            C3171 c31714 = (C3171) arrayList2.get(i2);
            if (c31713 != null && !c31713.f12113.contains(this)) {
                c31713 = null;
            }
            if (c31714 != null && !c31714.f12113.contains(this)) {
                c31714 = null;
            }
            if ((c31713 != null || c31714 != null) && (c31713 == null || c31714 == null || mo6901(c31713, c31714))) {
                Animator mo6907 = mo6907(viewGroup, c31713, c31714);
                if (mo6907 != null) {
                    String str = this.f12031;
                    if (c31714 != null) {
                        view = c31714.f12114;
                        String[] mo6916 = mo6916();
                        if (mo6916 != null && mo6916.length > 0) {
                            c31712 = new C3171(view);
                            C3171 c31715 = (C3171) ((C3359) r22.ᴵˊ).get(view);
                            i = size;
                            z = z2;
                            if (c31715 != null) {
                                for (String str2 : mo6916) {
                                    c31712.f12115.put(str2, c31715.f12115.get(str2));
                                }
                            }
                            int i3 = m6893.f13167;
                            int i4 = 0;
                            while (true) {
                                if (i4 >= i3) {
                                    animator = mo6907;
                                    break;
                                }
                                C3158 c3158 = (C3158) m6893.get((Animator) m6893.m7225(i4));
                                if (c3158.f12083 != null && c3158.f12087 == view && c3158.f12086.equals(str) && c3158.f12083.equals(c31712)) {
                                    animator = null;
                                    break;
                                }
                                i4++;
                            }
                        } else {
                            i = size;
                            z = z2;
                            animator = mo6907;
                            c31712 = null;
                        }
                        mo6907 = animator;
                        c3171 = c31712;
                    } else {
                        i = size;
                        z = z2;
                        view = c31713.f12114;
                        c3171 = null;
                    }
                    if (mo6907 != null) {
                        WindowId windowId = viewGroup.getWindowId();
                        ?? obj = new Object();
                        obj.f12087 = view;
                        obj.f12086 = str;
                        obj.f12083 = c3171;
                        obj.f12084 = windowId;
                        obj.f12085 = this;
                        obj.f12088 = mo6907;
                        if (z) {
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.play(mo6907);
                            mo6907 = animatorSet;
                        }
                        m6893.put(mo6907, obj);
                        this.f12037.add(mo6907);
                    }
                    i2++;
                    size = i;
                    z2 = z;
                }
            }
            i = size;
            z = z2;
            i2++;
            size = i;
            z2 = z;
        }
        if (sparseIntArray.size() != 0) {
            for (int i5 = 0; i5 < sparseIntArray.size(); i5++) {
                C3158 c31582 = (C3158) m6893.get((Animator) this.f12037.get(sparseIntArray.keyAt(i5)));
                c31582.f12088.setStartDelay(c31582.f12088.getStartDelay() + (sparseIntArray.valueAt(i5) - Long.MAX_VALUE));
            }
        }
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public void mo6926(long j, long j2) {
        long j3 = this.f12032;
        int i = 0;
        boolean z = j < j2;
        if ((j2 < 0 && j >= 0) || (j2 > j3 && j <= j3)) {
            this.f12029 = false;
            m6906(this, InterfaceC3149.f12065, z);
        }
        ArrayList arrayList = this.f12035;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f12043);
        this.f12043 = f12027;
        while (i < size) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            AbstractC3146.m6939(animator, Math.min(Math.max(0L, j), AbstractC3146.m6940(animator)));
            i++;
            j3 = j3;
        }
        long j4 = j3;
        this.f12043 = animatorArr;
        if ((j <= j4 || j2 > j4) && (j >= 0 || j2 < 0)) {
            return;
        }
        if (j > j4) {
            this.f12029 = true;
        }
        m6906(this, InterfaceC3149.f12064, z);
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public void mo6927(ˈ r1) {
        this.f12048 = r1;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void mo6928(C3171 c3171) {
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m6929(View view) {
        ArrayList arrayList = this.f12046;
        if (view != null) {
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (!arrayList.contains(view)) {
                arrayList.add(view);
            }
        }
        this.f12046 = arrayList;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public boolean mo6930() {
        return this instanceof C3164;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void mo6931(View view) {
        this.f12040.add(view);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m6932(InterfaceC3165 interfaceC3165) {
        if (this.f12055 == null) {
            this.f12055 = new ArrayList();
        }
        this.f12055.add(interfaceC3165);
    }

    @Override // 
    /* renamed from: ﾞʻ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public AbstractC3143 clone() {
        try {
            AbstractC3143 abstractC3143 = (AbstractC3143) super.clone();
            abstractC3143.f12037 = new ArrayList();
            abstractC3143.f12039 = new ﹳٴ(18);
            abstractC3143.f12052 = new ﹳٴ(18);
            abstractC3143.f12053 = null;
            abstractC3143.f12034 = null;
            abstractC3143.f12033 = null;
            abstractC3143.f12044 = this;
            abstractC3143.f12055 = null;
            return abstractC3143;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m6934(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            C3171 c3171 = new C3171(view);
            if (z) {
                mo6898(c3171);
            } else {
                mo6914(c3171);
            }
            c3171.f12113.add(this);
            mo6928(c3171);
            if (z) {
                m6895(this.f12039, view, c3171);
            } else {
                m6895(this.f12052, view, c3171);
            }
        }
        if (view instanceof ViewGroup) {
            ArrayList arrayList = this.f12046;
            if (arrayList == null || !arrayList.contains(view)) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    m6934(viewGroup.getChildAt(i), z);
                }
            }
        }
    }
}

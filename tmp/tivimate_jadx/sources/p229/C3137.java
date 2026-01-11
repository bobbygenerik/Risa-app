package p229;

import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import p223.C3056;
import p294.AbstractC3655;
import ʿי.ـᵢ;

/* renamed from: ˑʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3137 implements InterfaceC3093 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public String f11995;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f11996;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f11997;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f11998;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f11999;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public CharSequence f12000;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public ArrayList f12001;

    /* renamed from: ˏי, reason: contains not printable characters */
    public int f12002;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f12003;

    /* renamed from: יـ, reason: contains not printable characters */
    public boolean f12004;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public CharSequence f12005;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f12006;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public ArrayList f12007;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f12008;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public ArrayList f12009;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f12010;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f12011;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final C3085 f12012;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f12013;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f12014;

    public C3137(C3085 c3085) {
        c3085.m6699();
        C3114 c3114 = c3085.f11729;
        if (c3114 != null) {
            c3114.f11849.getClassLoader();
        }
        this.f12011 = new ArrayList();
        this.f12008 = true;
        this.f11996 = false;
        this.f12002 = -1;
        this.f12012 = c3085;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f12002 >= 0) {
            sb.append(" #");
            sb.append(this.f12002);
        }
        if (this.f11995 != null) {
            sb.append(" ");
            sb.append(this.f11995);
        }
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m6879(int i, AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, String str, int i2) {
        String str2 = abstractComponentCallbacksC3123.f11918;
        if (str2 != null) {
            AbstractC3655.m7673(abstractComponentCallbacksC3123, str2);
        }
        Class<?> cls = abstractComponentCallbacksC3123.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = abstractComponentCallbacksC3123.f11898;
            if (str3 != null && !str.equals(str3)) {
                throw new IllegalStateException("Can't change tag of fragment " + abstractComponentCallbacksC3123 + ": was " + abstractComponentCallbacksC3123.f11898 + " now " + str);
            }
            abstractComponentCallbacksC3123.f11898 = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + abstractComponentCallbacksC3123 + " with tag " + str + " to container view with no id");
            }
            int i3 = abstractComponentCallbacksC3123.f11904;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + abstractComponentCallbacksC3123 + ": was " + abstractComponentCallbacksC3123.f11904 + " now " + i);
            }
            abstractComponentCallbacksC3123.f11904 = i;
            abstractComponentCallbacksC3123.f11897 = i;
        }
        m6888(new C3074(i2, abstractComponentCallbacksC3123));
        abstractComponentCallbacksC3123.f11917 = this.f12012;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6880(String str) {
        if (!this.f12008) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.f12006 = true;
        this.f11995 = str;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m6881(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f11995);
            printWriter.print(" mIndex=");
            printWriter.print(this.f12002);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f12004);
            if (this.f12014 != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f12014));
            }
            if (this.f12010 != 0 || this.f11997 != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f12010));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f11997));
            }
            if (this.f11999 != 0 || this.f12003 != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f11999));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f12003));
            }
            if (this.f11998 != 0 || this.f12005 != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f11998));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f12005);
            }
            if (this.f12013 != 0 || this.f12000 != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f12013));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f12000);
            }
        }
        ArrayList arrayList = this.f12011;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C3074 c3074 = (C3074) arrayList.get(i);
            switch (c3074.f11689) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    str2 = "DETACH";
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    str2 = "ATTACH";
                    break;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + c3074.f11689;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(c3074.f11688);
            if (z) {
                if (c3074.f11684 != 0 || c3074.f11685 != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(c3074.f11684));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(c3074.f11685));
                }
                if (c3074.f11690 != 0 || c3074.f11686 != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(c3074.f11690));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(c3074.f11686));
                }
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m6882(int i) {
        if (this.f12006) {
            if (C3085.m6654(2)) {
                String str = "Bump nesting in " + this + " by " + i;
            }
            ArrayList arrayList = this.f12011;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                C3074 c3074 = (C3074) arrayList.get(i2);
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3074.f11688;
                if (abstractComponentCallbacksC3123 != null) {
                    abstractComponentCallbacksC3123.f11889 += i;
                    if (C3085.m6654(2)) {
                        String str2 = "Bump nesting of " + c3074.f11688 + " to " + c3074.f11688.f11889;
                    }
                }
            }
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m6883(ـᵢ r4) {
        C3085 c3085 = r4.f11917;
        if (c3085 == null || c3085 == this.f12012) {
            m6888(new C3074(5, r4));
            return;
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + r4.toString() + " is already attached to a FragmentManager.");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m6884() {
        ArrayList arrayList = this.f12011;
        int size = arrayList.size() - 1;
        while (size >= 0) {
            C3074 c3074 = (C3074) arrayList.get(size);
            if (c3074.f11683) {
                if (c3074.f11689 == 8) {
                    c3074.f11683 = false;
                    arrayList.remove(size - 1);
                    size--;
                } else {
                    int i = c3074.f11688.f11897;
                    c3074.f11689 = 2;
                    c3074.f11683 = false;
                    for (int i2 = size - 1; i2 >= 0; i2--) {
                        C3074 c30742 = (C3074) arrayList.get(i2);
                        if (c30742.f11683 && c30742.f11688.f11897 == i) {
                            arrayList.remove(i2);
                            size--;
                        }
                    }
                }
            }
            size--;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m6885(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        C3085 c3085 = abstractComponentCallbacksC3123.f11917;
        if (c3085 == null || c3085 == this.f12012) {
            m6888(new C3074(3, abstractComponentCallbacksC3123));
            return;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + abstractComponentCallbacksC3123.toString() + " is already attached to a FragmentManager.");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int m6886(boolean z, boolean z2) {
        if (this.f12004) {
            throw new IllegalStateException("commit already called");
        }
        if (C3085.m6654(2)) {
            String str = "Commit: " + this;
            PrintWriter printWriter = new PrintWriter(new C3124());
            m6881("  ", printWriter, true);
            printWriter.close();
        }
        this.f12004 = true;
        boolean z3 = this.f12006;
        C3085 c3085 = this.f12012;
        if (z3) {
            this.f12002 = c3085.f11747.getAndIncrement();
        } else {
            this.f12002 = -1;
        }
        if (z2) {
            c3085.m6657(this, z);
        }
        return this.f12002;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m6887() {
        if (this.f12006) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f12008 = false;
        this.f12012.m6695(this, false);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6888(C3074 c3074) {
        this.f12011.add(c3074);
        c3074.f11684 = this.f12010;
        c3074.f11685 = this.f11997;
        c3074.f11690 = this.f11999;
        c3074.f11686 = this.f12003;
    }

    @Override // p229.InterfaceC3093
    /* renamed from: ﹳٴ */
    public final boolean mo6717(ArrayList arrayList, ArrayList arrayList2) {
        if (C3085.m6654(2)) {
            String str = "Run: " + this;
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f12006) {
            return true;
        }
        this.f12012.f11732.add(this);
        return true;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m6889(int i, AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        m6879(i, abstractComponentCallbacksC3123, str, 2);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m6890() {
        m6886(false, true);
    }
}

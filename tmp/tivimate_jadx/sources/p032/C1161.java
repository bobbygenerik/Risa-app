package p032;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.util.Comparator;
import p223.C3056;
import p301.InterfaceC3701;
import ʼⁱ.ˎᐧ;
import ʼⁱ.ˑˆ;
import ʼⁱ.יـ;
import ʼⁱ.ᵎⁱ;
import ˉʾ.ˉʿ;
import ˉʾ.ﹳᐧ;
import ˉˊ.ʿᵢ;
import ˉˊ.ˈʿ;
import ˏʽ.ʽ;
import ᴵʽ.ʼˈ;
import ᴵʽ.ˈˏ;

/* renamed from: ʼᵢ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1161 implements Comparator {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f4447;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f4448;

    public /* synthetic */ C1161(int i, Object obj) {
        this.f4447 = i;
        this.f4448 = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.f4447;
        Object obj3 = this.f4448;
        switch (i) {
            case 0:
                InterfaceC1149 interfaceC1149 = (InterfaceC1149) obj3;
                return interfaceC1149.mo3581(obj2) - interfaceC1149.mo3581(obj);
            case 1:
                InterfaceC3701[] interfaceC3701Arr = ᵎⁱ.ﹶʽ;
                return ((Number) ((יـ) obj3).ʼˎ(obj, obj2)).intValue();
            case 2:
                return ((Number) ((ˎᐧ) obj3).ʼˎ(obj, obj2)).intValue();
            case 3:
                return ((Number) ((ˑˆ) obj3).ʼˎ(obj, obj2)).intValue();
            case 4:
                return ((Number) ((ˎᐧ) obj3).ʼˎ(obj, obj2)).intValue();
            case 5:
                return ((Number) ((ˑˆ) obj3).ʼˎ(obj, obj2)).intValue();
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return ((Number) ((ˎᐧ) obj3).ʼˎ(obj, obj2)).intValue();
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((Number) ((ˉʿ) obj3).ʼˎ(obj, obj2)).intValue();
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return ((Number) ((ﹳᐧ) obj3).ʼˎ(obj, obj2)).intValue();
            case 9:
                return ((Number) ((ˉʾ.יـ) obj3).ʼˎ(obj, obj2)).intValue();
            case 10:
                return ((Number) ((ˎᐧ) obj3).ʼˎ(obj, obj2)).intValue();
            case 11:
                return ((Number) ((ˎᐧ) obj3).ʼˎ(obj, obj2)).intValue();
            case 12:
                return ((Number) ((ˉʿ) obj3).ʼˎ(obj, obj2)).intValue();
            case 13:
                return ((Number) ((ˑˆ) obj3).ʼˎ(obj, obj2)).intValue();
            case 14:
                return ((Number) ((ˎᐧ) obj3).ʼˎ(obj, obj2)).intValue();
            case 15:
                return ((Number) ((ˉʿ) obj3).ʼˎ(obj, obj2)).intValue();
            case 16:
                return ((Number) ((ˑˆ) obj3).ʼˎ(obj, obj2)).intValue();
            case 17:
                InterfaceC3701[] interfaceC3701Arr2 = ˉˊ.ᵎⁱ.ﾞˏ;
                return ((Number) ((יـ) obj3).ʼˎ(obj, obj2)).intValue();
            case 18:
                InterfaceC3701[] interfaceC3701Arr3 = ʿᵢ.ˑˆ;
                return ((Number) ((ˈʿ) obj3).ʼˎ(obj, obj2)).intValue();
            case 19:
                return ((Number) ((ˑˆ) obj3).ʼˎ(obj, obj2)).intValue();
            case 20:
                return ((Number) ((ʽ) obj3).ʼˎ(obj, obj2)).intValue();
            case 21:
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) obj3;
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int compareTo = Boolean.valueOf(materialButton.f2632).compareTo(Boolean.valueOf(materialButton2.f2632));
                if (compareTo != 0) {
                    return compareTo;
                }
                int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                return compareTo2 != 0 ? compareTo2 : Integer.compare(materialButtonToggleGroup.indexOfChild(materialButton), materialButtonToggleGroup.indexOfChild(materialButton2));
            case 22:
                return ((Number) ((ʽ) obj3).ʼˎ(obj, obj2)).intValue();
            case 23:
                return ((Number) ((ʽ) obj3).ʼˎ(obj, obj2)).intValue();
            case 24:
                return ((Number) ((ʽ) obj3).ʼˎ(obj, obj2)).intValue();
            case 25:
                return ((Number) ((ˎᐧ) obj3).ʼˎ(obj, obj2)).intValue();
            case 26:
                InterfaceC3701[] interfaceC3701Arr4 = ʼˈ.ﾞˏ;
                return ((Number) ((יـ) obj3).ʼˎ(obj, obj2)).intValue();
            case 27:
                InterfaceC3701[] interfaceC3701Arr5 = ˈˏ.ˑˆ;
                return ((Number) ((ˈʿ) obj3).ʼˎ(obj, obj2)).intValue();
            case 28:
                return ((Number) ((ˑˆ) obj3).ʼˎ(obj, obj2)).intValue();
            default:
                return ((Number) ((ˎᐧ) obj3).ʼˎ(obj, obj2)).intValue();
        }
    }
}

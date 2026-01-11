package p137;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.ExecutorService;
import p010.AbstractC0844;
import p034.InterfaceC1195;
import p140.AbstractC2376;
import p171.InterfaceC2639;
import p229.AbstractComponentCallbacksC3123;
import p229.C3085;
import p286.C3579;
import p286.C3582;
import p286.C3583;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: ˉˆ.ٴᴵ */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2305 {
    /* renamed from: ʻٴ */
    public static void m5359(String str, String str2, String str3) {
        AbstractC3731.m7850(str3, str + str2);
    }

    /* renamed from: ʼʼ */
    public static /* synthetic */ String m5360(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "null" : "REMOVING" : "ADDING" : "NONE";
    }

    /* renamed from: ʼˎ */
    public static String m5361(String str, AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, String str2) {
        return str + abstractComponentCallbacksC3123 + str2;
    }

    /* renamed from: ʼᐧ */
    public static ArrayList m5362(LinkedHashMap linkedHashMap, Long l) {
        ArrayList arrayList = new ArrayList();
        linkedHashMap.put(l, arrayList);
        return arrayList;
    }

    /* renamed from: ʽ */
    public static final String m5363(int i) {
        int m3018 = AbstractC0844.m3018(i);
        if (m3018 == 0) {
            return "GET";
        }
        if (m3018 == 1) {
            return "POST";
        }
        if (m3018 == 2) {
            return "PUT";
        }
        if (m3018 == 3) {
            return "DELETE";
        }
        throw new IllegalArgumentException("Invalid http method: <" + m5365(i) + ">");
    }

    /* renamed from: ʽﹳ */
    public static /* synthetic */ void m5364(AutoCloseable autoCloseable) {
        if (autoCloseable instanceof AutoCloseable) {
            autoCloseable.close();
            return;
        }
        if (autoCloseable instanceof ExecutorService) {
            AbstractC2376.m5452((ExecutorService) autoCloseable);
            return;
        }
        if (autoCloseable instanceof TypedArray) {
            ((TypedArray) autoCloseable).recycle();
            return;
        }
        if (autoCloseable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable).release();
            return;
        }
        if (autoCloseable instanceof MediaDrm) {
            ((MediaDrm) autoCloseable).release();
        } else if (autoCloseable instanceof DrmManagerClient) {
            ((DrmManagerClient) autoCloseable).release();
        } else {
            if (!(autoCloseable instanceof ContentProviderClient)) {
                throw new IllegalArgumentException();
            }
            ((ContentProviderClient) autoCloseable).release();
        }
    }

    /* renamed from: ʾˋ */
    public static /* synthetic */ String m5365(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "DELETE" : "PUT" : "POST" : "GET";
    }

    /* renamed from: ʾᵎ */
    public static /* synthetic */ boolean m5366(Object obj) {
        return obj != null;
    }

    /* renamed from: ˆʾ */
    public static String m5367(String str, C3579 c3579, String str2, C3579 c35792) {
        return str + c3579 + str2 + c35792;
    }

    /* renamed from: ˈ */
    public static ClassCastException m5368(Object obj) {
        obj.getClass();
        return new ClassCastException();
    }

    /* renamed from: ˉʿ */
    public static String m5369(StringBuilder sb, List list, char c) {
        sb.append(list);
        sb.append(c);
        return sb.toString();
    }

    /* renamed from: ˉˆ */
    public static StringBuilder m5370(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    /* renamed from: ˏי */
    public static void m5371(int i, HashMap hashMap, String str, int i2, String str2) {
        hashMap.put(str, Integer.valueOf(i));
        hashMap.put(str2, Integer.valueOf(i2));
    }

    /* renamed from: ˑﹳ */
    public static ClassCastException m5372(Iterator it) {
        it.next().getClass();
        return new ClassCastException();
    }

    /* renamed from: יـ */
    public static void m5373(int i, String str, String str2) {
        AbstractC3731.m7850(str2, str + i);
    }

    /* renamed from: ـˆ */
    public static void m5374(InterfaceC1195 interfaceC1195, String str, String str2, String str3, String str4) {
        interfaceC1195.mo3710(str);
        interfaceC1195.mo3710(str2);
        interfaceC1195.mo3710(str3);
        interfaceC1195.mo3710(str4);
    }

    /* renamed from: ٴﹶ */
    public static String m5375(StringBuilder sb, Long l, char c) {
        sb.append(l);
        sb.append(c);
        return sb.toString();
    }

    /* renamed from: ᵎﹶ */
    public static String m5376(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.m974());
        return sb.toString();
    }

    /* renamed from: ᵔʾ */
    public static String m5377(StringBuilder sb, boolean z, char c) {
        sb.append(z);
        sb.append(c);
        return sb.toString();
    }

    /* renamed from: ᵔᵢ */
    public static String m5378(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    /* renamed from: ᵔﹳ */
    public static LinkedHashSet m5379(LinkedHashMap linkedHashMap, String str, C3582 c3582) {
        linkedHashMap.put(str, c3582);
        return new LinkedHashSet();
    }

    /* renamed from: ᵢˏ */
    public static /* synthetic */ String m5380(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "INVISIBLE" : "GONE" : "VISIBLE" : "REMOVED";
    }

    /* renamed from: ⁱˊ */
    public static final void m5381(int i, View view, ViewGroup viewGroup) {
        if (C3085.m6654(2)) {
        }
        int m3018 = AbstractC0844.m3018(i);
        if (m3018 == 0) {
            ViewParent parent = view.getParent();
            ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup2 != null) {
                if (C3085.m6654(2)) {
                    String str = "SpecialEffectsController: Removing view " + view + " from container " + viewGroup2;
                }
                viewGroup2.removeView(view);
                return;
            }
            return;
        }
        if (m3018 == 1) {
            if (C3085.m6654(2)) {
                String str2 = "SpecialEffectsController: Setting view " + view + " to VISIBLE";
            }
            ViewParent parent2 = view.getParent();
            if ((parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null) == null) {
                if (C3085.m6654(2)) {
                    String str3 = "SpecialEffectsController: Adding view " + view + " to Container " + viewGroup;
                }
                viewGroup.addView(view);
            }
            view.setVisibility(0);
            return;
        }
        if (m3018 == 2) {
            if (C3085.m6654(2)) {
                String str4 = "SpecialEffectsController: Setting view " + view + " to GONE";
            }
            view.setVisibility(8);
            return;
        }
        if (m3018 != 3) {
            return;
        }
        if (C3085.m6654(2)) {
            String str5 = "SpecialEffectsController: Setting view " + view + " to INVISIBLE";
        }
        view.setVisibility(4);
    }

    /* renamed from: ﹳٴ */
    public static void m5382(InterfaceC2639 interfaceC2639, C3732 c3732, int i) {
        interfaceC2639.mo4111(c3732, i, 0);
    }

    /* renamed from: ﹳᐧ */
    public static LinkedHashSet m5383(LinkedHashSet linkedHashSet, C3583 c3583) {
        linkedHashSet.add(c3583);
        return new LinkedHashSet();
    }

    /* renamed from: ﾞʻ */
    public static String m5384(StringBuilder sb, String str, char c) {
        sb.append(str);
        sb.append(c);
        return sb.toString();
    }

    /* renamed from: ﾞᴵ */
    public static String m5385(int i, String str) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        return sb.toString();
    }
}

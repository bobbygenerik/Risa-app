package p333;

import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.AbstractC0196;
import androidx.lifecycle.C0167;
import androidx.lifecycle.C0178;
import androidx.lifecycle.C0180;
import androidx.lifecycle.C0184;
import androidx.lifecycle.C0206;
import androidx.lifecycle.C0210;
import androidx.lifecycle.EnumC0174;
import androidx.lifecycle.EnumC0199;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.InterfaceC0183;
import androidx.lifecycle.InterfaceC0191;
import androidx.lifecycle.InterfaceC0202;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import p035.AbstractC1220;
import p137.AbstractC2305;
import p229.AbstractComponentCallbacksC3123;
import p229.C3125;

/* renamed from: ᵎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4204 implements InterfaceC0183 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f15645;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f15646;

    public /* synthetic */ C4204(int i, Object obj) {
        this.f15645 = i;
        this.f15646 = obj;
    }

    @Override // androidx.lifecycle.InterfaceC0183
    /* renamed from: ᵎﹶ */
    public final void mo679(InterfaceC0162 interfaceC0162, EnumC0174 enumC0174) {
        View view;
        switch (this.f15645) {
            case 0:
                InterfaceC4203 interfaceC4203 = (InterfaceC4203) this.f15646;
                if (enumC0174 != EnumC0174.ON_CREATE) {
                    throw new AssertionError("Next event must be ON_CREATE");
                }
                interfaceC0162.mo691().m715(this);
                Bundle m6817 = interfaceC4203.mo3852().m6817("androidx.savedstate.Restarter");
                if (m6817 == null) {
                    return;
                }
                ArrayList<String> stringArrayList = m6817.getStringArrayList("classes_to_restore");
                if (stringArrayList == null) {
                    throw new IllegalStateException("SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
                }
                int size = stringArrayList.size();
                int i = 0;
                while (i < size) {
                    String str = stringArrayList.get(i);
                    i++;
                    String str2 = str;
                    try {
                        Class<? extends U> asSubclass = Class.forName(str2, false, C4204.class.getClassLoader()).asSubclass(InterfaceC4201.class);
                        try {
                            Constructor declaredConstructor = asSubclass.getDeclaredConstructor(null);
                            declaredConstructor.setAccessible(true);
                            try {
                                ((C0167) ((InterfaceC4201) declaredConstructor.newInstance(null))).getClass();
                                if (!(interfaceC4203 instanceof InterfaceC0191)) {
                                    throw new IllegalStateException(("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: " + interfaceC4203).toString());
                                }
                                C0180 mo724 = ((InterfaceC0191) interfaceC4203).mo724();
                                C3125 mo3852 = interfaceC4203.mo3852();
                                mo724.getClass();
                                LinkedHashMap linkedHashMap = mo724.f1069;
                                Iterator it = new HashSet(linkedHashMap.keySet()).iterator();
                                while (it.hasNext()) {
                                    AbstractC0196 abstractC0196 = (AbstractC0196) linkedHashMap.get((String) it.next());
                                    if (abstractC0196 != null) {
                                        C0184 mo691 = interfaceC4203.mo691();
                                        C0178 c0178 = (C0178) abstractC0196.m729("androidx.lifecycle.savedstate.vm.tag");
                                        if (c0178 != null && !c0178.f1066) {
                                            c0178.m705(mo3852, mo691);
                                            EnumC0199 enumC0199 = mo691.f1076;
                                            if (enumC0199 == EnumC0199.f1104 || enumC0199.m733(EnumC0199.f1102)) {
                                                mo3852.m6839();
                                            } else {
                                                mo691.m714(new C0210(mo691, 1, mo3852));
                                            }
                                        }
                                    }
                                }
                                if (!new HashSet(linkedHashMap.keySet()).isEmpty()) {
                                    mo3852.m6839();
                                }
                            } catch (Exception e) {
                                throw new RuntimeException(AbstractC1220.m3771("Failed to instantiate ", str2), e);
                            }
                        } catch (NoSuchMethodException e2) {
                            throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                        }
                    } catch (ClassNotFoundException e3) {
                        throw new RuntimeException(AbstractC2305.m5378("Class ", str2, " wasn't found"), e3);
                    }
                }
                return;
            case 1:
                new HashMap();
                InterfaceC0202[] interfaceC0202Arr = (InterfaceC0202[]) this.f15646;
                if (interfaceC0202Arr.length > 0) {
                    InterfaceC0202 interfaceC0202 = interfaceC0202Arr[0];
                    throw null;
                }
                if (interfaceC0202Arr.length <= 0) {
                    return;
                }
                InterfaceC0202 interfaceC02022 = interfaceC0202Arr[0];
                throw null;
            case 2:
                if (enumC0174 == EnumC0174.ON_CREATE) {
                    interfaceC0162.mo691().m715(this);
                    ((C0206) this.f15646).m737();
                    return;
                } else {
                    throw new IllegalStateException(("Next event must be ON_CREATE, it was " + enumC0174).toString());
                }
            default:
                if (enumC0174 != EnumC0174.ON_STOP || (view = ((AbstractComponentCallbacksC3123) this.f15646).f11908) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
                return;
        }
    }
}

package androidx.leanback.widget;

import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Checkable;
import android.widget.CheckedTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.ui.TrackSelectionView;
import androidx.preference.Preference;
import com.google.android.material.datepicker.C0678;
import java.util.ArrayList;
import java.util.HashMap;
import p017.AbstractC0993;
import p055.C1453;
import p055.C1474;
import p055.C1493;
import p136.AbstractC2228;
import p137.C2304;
import p223.C3056;
import p312.C3861;
import p353.C4329;
import p363.C4435;

/* renamed from: androidx.leanback.widget.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0083 implements View.OnClickListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f840;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f841;

    public /* synthetic */ ViewOnClickListenerC0083(int i, Object obj) {
        this.f840 = i;
        this.f841 = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Message message;
        Message message2;
        Message message3;
        switch (this.f840) {
            case 0:
                C0108 c0108 = (C0108) this.f841;
                InterfaceC0136 interfaceC0136 = c0108.f914;
                VerticalGridView verticalGridView = c0108.f910;
                if (view == null || view.getWindowToken() == null || !verticalGridView.f1499) {
                    return;
                }
                C0101 c0101 = (C0101) verticalGridView.m946(view);
                C0095 c0095 = c0101.f896;
                KeyEvent.Callback callback = c0101.f895;
                int i = c0095.f878;
                if (i == 1 || i == 2) {
                    c0108.f911.m1596(c0108, c0101);
                    return;
                }
                if (c0095.m585()) {
                    if (interfaceC0136 != null) {
                        interfaceC0136.mo441(c0101.f896);
                        return;
                    }
                    return;
                }
                ArrayList arrayList = c0108.f909;
                C0117 c0117 = c0108.f918;
                C0095 c00952 = c0101.f896;
                int i2 = c00952.f874;
                if (verticalGridView.f1499 && i2 != 0) {
                    if (i2 != -1) {
                        int size = arrayList.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            C0095 c00953 = (C0095) arrayList.get(i3);
                            if (c00953 != c00952 && c00953.f874 == i2 && c00953.m584()) {
                                c00953.m583(0, 1);
                                C0101 c01012 = (C0101) verticalGridView.m979(i3, false);
                                if (c01012 != null) {
                                    c0117.getClass();
                                    KeyEvent.Callback callback2 = c01012.f895;
                                    if (callback2 instanceof Checkable) {
                                        ((Checkable) callback2).setChecked(false);
                                    }
                                }
                            }
                        }
                    }
                    if (!c00952.m584()) {
                        c00952.m583(1, 1);
                        c0117.getClass();
                        if (callback instanceof Checkable) {
                            ((Checkable) callback).setChecked(true);
                        }
                    } else if (i2 == -1) {
                        c00952.m583(0, 1);
                        c0117.getClass();
                        if (callback instanceof Checkable) {
                            ((Checkable) callback).setChecked(false);
                        }
                    }
                }
                if (!c0095.m580() || (c0095.f875 & 8) == 8 || interfaceC0136 == null) {
                    return;
                }
                interfaceC0136.mo441(c0101.f896);
                return;
            case 1:
                SearchBar searchBar = (SearchBar) this.f841;
                if (searchBar.f735) {
                    searchBar.m552();
                    return;
                } else {
                    searchBar.m548();
                    return;
                }
            case 2:
                C0678 c0678 = (C0678) this.f841;
                int i4 = c0678.f2770;
                if (i4 == 2) {
                    c0678.m2414(1);
                } else if (i4 == 1) {
                    c0678.m2414(2);
                }
                c0678.m2416(c0678.f11908);
                return;
            case 3:
                ((Preference) this.f841).mo811(view);
                return;
            case 4:
                ((AbstractC2228) this.f841).mo5223();
                return;
            case 5:
                C2304 c2304 = ((Toolbar) this.f841).f204;
                C4329 c4329 = c2304 == null ? null : c2304.f8996;
                if (c4329 != null) {
                    c4329.collapseActionView();
                    return;
                }
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                TrackSelectionView trackSelectionView = (TrackSelectionView) this.f841;
                HashMap hashMap = trackSelectionView.f1321;
                boolean z = true;
                if (view == trackSelectionView.f1315) {
                    trackSelectionView.f1326 = true;
                    hashMap.clear();
                } else if (view == trackSelectionView.f1317) {
                    trackSelectionView.f1326 = false;
                    hashMap.clear();
                } else {
                    trackSelectionView.f1326 = false;
                    Object tag = view.getTag();
                    tag.getClass();
                    C3861 c3861 = (C3861) tag;
                    C1453 c1453 = c3861.f15036;
                    C1474 c1474 = c1453.f5655;
                    int i5 = c3861.f15035;
                    C1493 c1493 = (C1493) hashMap.get(c1474);
                    if (c1493 == null) {
                        if (!trackSelectionView.f1325 && !hashMap.isEmpty()) {
                            hashMap.clear();
                        }
                        hashMap.put(c1474, new C1493(c1474, AbstractC0993.m3260(Integer.valueOf(i5))));
                    } else {
                        ArrayList arrayList2 = new ArrayList(c1493.f5896);
                        boolean isChecked = ((CheckedTextView) view).isChecked();
                        boolean z2 = trackSelectionView.f1318 && c1453.f5652;
                        if (!z2 && (!trackSelectionView.f1325 || trackSelectionView.f1319.size() <= 1)) {
                            z = false;
                        }
                        if (isChecked && z) {
                            arrayList2.remove(Integer.valueOf(i5));
                            if (arrayList2.isEmpty()) {
                                hashMap.remove(c1474);
                            } else {
                                hashMap.put(c1474, new C1493(c1474, arrayList2));
                            }
                        } else if (!isChecked) {
                            if (z2) {
                                arrayList2.add(Integer.valueOf(i5));
                                hashMap.put(c1474, new C1493(c1474, arrayList2));
                            } else {
                                hashMap.put(c1474, new C1493(c1474, AbstractC0993.m3260(Integer.valueOf(i5))));
                            }
                        }
                    }
                }
                trackSelectionView.m810();
                return;
            default:
                C4435 c4435 = (C4435) this.f841;
                Message obtain = (view != c4435.f16546 || (message3 = c4435.f16564) == null) ? (view != c4435.f16575 || (message2 = c4435.f16568) == null) ? (view != c4435.f16557 || (message = c4435.f16570) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
                if (obtain != null) {
                    obtain.sendToTarget();
                }
                c4435.f16558.obtainMessage(1, c4435.f16572).sendToTarget();
                return;
        }
    }
}

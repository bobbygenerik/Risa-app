package androidx.media3.ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.leanback.widget.ViewOnClickListenerC0083;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import p055.C1453;
import p055.C1474;
import p055.C1493;
import p312.C3861;
import p312.C3872;
import p312.InterfaceC3852;

/* loaded from: classes.dex */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final CheckedTextView f1315;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f1316;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final CheckedTextView f1317;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f1318;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final ArrayList f1319;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public InterfaceC3852 f1320;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final HashMap f1321;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final LayoutInflater f1322;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ViewOnClickListenerC0083 f1323;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public CheckedTextView[][] f1324;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f1325;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f1326;

    public TrackSelectionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setOrientation(1);
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.f1316 = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.f1322 = from;
        ViewOnClickListenerC0083 viewOnClickListenerC0083 = new ViewOnClickListenerC0083(6, this);
        this.f1323 = viewOnClickListenerC0083;
        this.f1320 = new C3872(getResources(), 0);
        this.f1319 = new ArrayList();
        this.f1321 = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f1315 = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(ar.tvplayer.tv.R.string.48o);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(viewOnClickListenerC0083);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(ar.tvplayer.tv.R.layout.1vt, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f1317 = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(ar.tvplayer.tv.R.string.51b);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(viewOnClickListenerC0083);
        addView(checkedTextView2);
    }

    public boolean getIsDisabled() {
        return this.f1326;
    }

    public Map<C1474, C1493> getOverrides() {
        return this.f1321;
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.f1318 != z) {
            this.f1318 = z;
            m809();
        }
    }

    public void setAllowMultipleOverrides(boolean z) {
        if (this.f1325 != z) {
            this.f1325 = z;
            if (!z) {
                HashMap hashMap = this.f1321;
                if (hashMap.size() > 1) {
                    HashMap hashMap2 = new HashMap();
                    int i = 0;
                    while (true) {
                        ArrayList arrayList = this.f1319;
                        if (i >= arrayList.size()) {
                            break;
                        }
                        C1493 c1493 = (C1493) hashMap.get(((C1453) arrayList.get(i)).f5655);
                        if (c1493 != null && hashMap2.isEmpty()) {
                            hashMap2.put(c1493.f5897, c1493);
                        }
                        i++;
                    }
                    hashMap.clear();
                    hashMap.putAll(hashMap2);
                }
            }
            m809();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.f1315.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(InterfaceC3852 interfaceC3852) {
        interfaceC3852.getClass();
        this.f1320 = interfaceC3852;
        m809();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m809() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        ArrayList arrayList = this.f1319;
        boolean isEmpty = arrayList.isEmpty();
        CheckedTextView checkedTextView = this.f1317;
        CheckedTextView checkedTextView2 = this.f1315;
        if (isEmpty) {
            checkedTextView2.setEnabled(false);
            checkedTextView.setEnabled(false);
            return;
        }
        checkedTextView2.setEnabled(true);
        checkedTextView.setEnabled(true);
        this.f1324 = new CheckedTextView[arrayList.size()];
        boolean z = this.f1325 && arrayList.size() > 1;
        for (int i = 0; i < arrayList.size(); i++) {
            C1453 c1453 = (C1453) arrayList.get(i);
            boolean z2 = this.f1318 && c1453.f5652;
            CheckedTextView[][] checkedTextViewArr = this.f1324;
            int i2 = c1453.f5656;
            checkedTextViewArr[i] = new CheckedTextView[i2];
            C3861[] c3861Arr = new C3861[i2];
            for (int i3 = 0; i3 < c1453.f5656; i3++) {
                c3861Arr[i3] = new C3861(c1453, i3);
            }
            for (int i4 = 0; i4 < i2; i4++) {
                LayoutInflater layoutInflater = this.f1322;
                if (i4 == 0) {
                    addView(layoutInflater.inflate(ar.tvplayer.tv.R.layout.1vt, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView3 = (CheckedTextView) layoutInflater.inflate((z2 || z) ? R.layout.simple_list_item_multiple_choice : R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
                checkedTextView3.setBackgroundResource(this.f1316);
                InterfaceC3852 interfaceC3852 = this.f1320;
                C3861 c3861 = c3861Arr[i4];
                checkedTextView3.setText(((C3872) interfaceC3852).m8070(c3861.f15036.f5655.f5767[c3861.f15035]));
                checkedTextView3.setTag(c3861Arr[i4]);
                if (c1453.m4243(i4)) {
                    checkedTextView3.setFocusable(true);
                    checkedTextView3.setOnClickListener(this.f1323);
                } else {
                    checkedTextView3.setFocusable(false);
                    checkedTextView3.setEnabled(false);
                }
                this.f1324[i][i4] = checkedTextView3;
                addView(checkedTextView3);
            }
        }
        m810();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m810() {
        this.f1315.setChecked(this.f1326);
        boolean z = this.f1326;
        HashMap hashMap = this.f1321;
        this.f1317.setChecked(!z && hashMap.isEmpty());
        for (int i = 0; i < this.f1324.length; i++) {
            C1493 c1493 = (C1493) hashMap.get(((C1453) this.f1319.get(i)).f5655);
            int i2 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.f1324[i];
                if (i2 < checkedTextViewArr.length) {
                    if (c1493 != null) {
                        Object tag = checkedTextViewArr[i2].getTag();
                        tag.getClass();
                        this.f1324[i][i2].setChecked(c1493.f5896.contains(Integer.valueOf(((C3861) tag).f15035)));
                    } else {
                        checkedTextViewArr[i2].setChecked(false);
                    }
                    i2++;
                }
            }
        }
    }
}

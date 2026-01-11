package p229;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.strictmode.Violation;
import p006.AbstractC0834;
import p137.AbstractC2305;
import p294.AbstractC3655;
import p294.C3656;
import p363.AbstractActivityC4410;

/* renamed from: ˑʼ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class LayoutInflaterFactory2C3113 implements LayoutInflater.Factory2 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3085 f11848;

    public LayoutInflaterFactory2C3113(C3085 c3085) {
        this.f11848 = c3085;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        C3120 m6702;
        boolean equals = FragmentContainerView.class.getName().equals(str);
        C3085 c3085 = this.f11848;
        if (equals) {
            return new FragmentContainerView(context, attributeSet, c3085);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0834.f3573);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(0);
            }
            int resourceId = obtainStyledAttributes.getResourceId(1, -1);
            String string = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            if (attributeValue != null) {
                try {
                    z = AbstractComponentCallbacksC3123.class.isAssignableFrom(C3105.m6751(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    z = false;
                }
                if (z) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    AbstractComponentCallbacksC3123 m6672 = resourceId != -1 ? c3085.m6672(resourceId) : null;
                    if (m6672 == null && string != null) {
                        m6672 = c3085.m6697(string);
                    }
                    if (m6672 == null && id != -1) {
                        m6672 = c3085.m6672(id);
                    }
                    if (m6672 == null) {
                        C3105 m6699 = c3085.m6699();
                        context.getClassLoader();
                        m6672 = m6699.m6752(attributeValue);
                        m6672.f11935 = true;
                        m6672.f11904 = resourceId != 0 ? resourceId : id;
                        m6672.f11897 = id;
                        m6672.f11898 = string;
                        m6672.f11900 = true;
                        m6672.f11917 = c3085;
                        C3114 c3114 = c3085.f11729;
                        m6672.f11936 = c3114;
                        AbstractActivityC4410 abstractActivityC4410 = c3114.f11849;
                        m6672.f11926 = true;
                        if ((c3114 != null ? c3114.f11851 : null) != null) {
                            m6672.f11926 = true;
                        }
                        m6702 = c3085.m6710(m6672);
                        if (C3085.m6654(2)) {
                            String str2 = "Fragment " + m6672 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId);
                        }
                    } else {
                        if (m6672.f11900) {
                            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                        }
                        m6672.f11900 = true;
                        m6672.f11917 = c3085;
                        C3114 c31142 = c3085.f11729;
                        m6672.f11936 = c31142;
                        AbstractActivityC4410 abstractActivityC44102 = c31142.f11849;
                        m6672.f11926 = true;
                        if ((c31142 != null ? c31142.f11851 : null) != null) {
                            m6672.f11926 = true;
                        }
                        m6702 = c3085.m6702(m6672);
                        if (C3085.m6654(2)) {
                            String str3 = "Retained Fragment " + m6672 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId);
                        }
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    C3656 c3656 = AbstractC3655.f14317;
                    AbstractC3655.m7674(new Violation(m6672, "Attempting to use <fragment> tag to add fragment " + m6672 + " to container " + viewGroup));
                    AbstractC3655.m7675(m6672).getClass();
                    m6672.f11888 = viewGroup;
                    m6702.m6769();
                    m6702.m6764();
                    View view2 = m6672.f11908;
                    if (view2 == null) {
                        throw new IllegalStateException(AbstractC2305.m5378("Fragment ", attributeValue, " did not create a view."));
                    }
                    if (resourceId != 0) {
                        view2.setId(resourceId);
                    }
                    if (m6672.f11908.getTag() == null) {
                        m6672.f11908.setTag(string);
                    }
                    m6672.f11908.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC3127(this, m6702));
                    return m6672.f11908;
                }
            }
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}

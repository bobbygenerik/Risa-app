package p434;

import com.google.android.material.carousel.CarouselLayoutManager;
import p012.AbstractC0905;

/* renamed from: ﹶˏ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5138 extends AbstractC0905 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f19408;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ CarouselLayoutManager f19409;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5138(CarouselLayoutManager carouselLayoutManager, int i) {
        super(1, 4);
        this.f19408 = i;
        switch (i) {
            case 1:
                this.f19409 = carouselLayoutManager;
                super(0, 4);
                return;
            default:
                this.f19409 = carouselLayoutManager;
                return;
        }
    }

    @Override // p012.AbstractC0905
    /* renamed from: ʼˎ */
    public final int mo3172() {
        switch (this.f19408) {
            case 0:
                CarouselLayoutManager carouselLayoutManager = this.f19409;
                return carouselLayoutManager.f10152 - carouselLayoutManager.m5987();
            default:
                return this.f19409.f10152;
        }
    }

    @Override // p012.AbstractC0905
    /* renamed from: ˆʾ */
    public final int mo3174() {
        switch (this.f19408) {
            case 0:
                return 0;
            default:
                CarouselLayoutManager carouselLayoutManager = this.f19409;
                if (carouselLayoutManager.m2377()) {
                    return carouselLayoutManager.f10152;
                }
                return 0;
        }
    }

    @Override // p012.AbstractC0905
    /* renamed from: ٴﹶ */
    public final int mo3179() {
        switch (this.f19408) {
            case 0:
                return 0;
            default:
                return this.f19409.m5989();
        }
    }

    @Override // p012.AbstractC0905
    /* renamed from: ᵎﹶ */
    public final int mo3180() {
        switch (this.f19408) {
            case 0:
                return this.f19409.f10148;
            default:
                CarouselLayoutManager carouselLayoutManager = this.f19409;
                return carouselLayoutManager.f10148 - carouselLayoutManager.m5988();
        }
    }

    @Override // p012.AbstractC0905
    /* renamed from: ᵔᵢ */
    public final int mo3181() {
        switch (this.f19408) {
            case 0:
                return this.f19409.m5984();
            default:
                return 0;
        }
    }
}

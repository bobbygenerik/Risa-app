.class public abstract Lᵔᵢ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ʽ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/window/OnBackInvokedCallback;

    invoke-static {p0}, Lـﹶ/ʾᵎ;->ʽ(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public static ⁱˊ(Ljava/lang/Object;Lᵔᵢ/ᵢˏ;)Landroid/window/OnBackInvokedCallback;
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lʽ/ˉˆ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lʽ/ˉˆ;-><init>(ILjava/lang/Object;)V

    invoke-static {p0}, Lـﹶ/ʾᵎ;->ʽ(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    const p1, 0xf4240

    invoke-interface {p0, p1, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-object v0
.end method

.method public static ﹳٴ(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    return-object p0
.end method

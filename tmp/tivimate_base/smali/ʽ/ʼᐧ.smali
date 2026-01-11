.class public final Lʽ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lʽ/ʼᐧ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʽ/ʼᐧ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʽ/ʼᐧ;->ﹳٴ:Lʽ/ʼᐧ;

    return-void
.end method


# virtual methods
.method public final ʽ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/window/OnBackInvokedDispatcher;

    check-cast p2, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p1, p2}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final ⁱˊ(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/window/OnBackInvokedDispatcher;

    check-cast p3, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p1, p2, p3}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final ﹳٴ(Lᴵⁱ/ﹳٴ;)Landroid/window/OnBackInvokedCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u1d35\u2071/\ufe73\u0674;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    new-instance v0, Lʽ/ˉˆ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lʽ/ˉˆ;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

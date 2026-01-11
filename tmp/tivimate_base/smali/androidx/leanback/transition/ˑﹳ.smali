.class public final Landroidx/leanback/transition/ˑﹳ;
.super Lʼ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ٴᵢ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/transition/ˑﹳ;->ٴᵢ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Landroid/view/View;)F
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/transition/ˑﹳ;->ٴᵢ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

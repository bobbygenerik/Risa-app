.class public final synthetic Lˉˆ/ﹶʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;I)V
    .locals 0

    iput p2, p0, Lˉˆ/ﹶʽ;->ʾˋ:I

    iput-object p1, p0, Lˉˆ/ﹶʽ;->ᴵˊ:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget v0, p0, Lˉˆ/ﹶʽ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉˆ/ﹶʽ;->ᴵˊ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->ˉʿ()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˉˆ/ﹶʽ;->ᴵˊ:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lᵔʾ/ﾞʻ;->collapseActionView()Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

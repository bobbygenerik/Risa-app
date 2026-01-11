.class public final synthetic Lᐧⁱ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lᐧⁱ/ﹳٴ;->ʾˋ:I

    iput-object p2, p0, Lᐧⁱ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iput-boolean p3, p0, Lᐧⁱ/ﹳٴ;->ᴵˊ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    iget v0, p0, Lᐧⁱ/ﹳٴ;->ʾˋ:I

    iget-boolean v1, p0, Lᐧⁱ/ﹳٴ;->ᴵˊ:Z

    iget-object v2, p0, Lᐧⁱ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Lـʾ/ᵔﹳ;

    iget-object v0, v2, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ᵔᵢ;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    check-cast v0, Lⁱי/ʻٴ;

    iget-object v0, v0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iget-boolean v2, v0, Lⁱי/ʼʼ;->ʿـ:Z

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, v0, Lⁱי/ʼʼ;->ʿـ:Z

    iget-object v0, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v2, Lⁱי/ˏי;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lⁱי/ˏי;-><init>(IZ)V

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v2}, Lᐧˎ/ˉʿ;->ᵎﹶ(ILᐧˎ/ˆʾ;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast v2, Landroidx/media3/ui/AspectRatioFrameLayout;

    sget v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵᵔ:I

    invoke-virtual {v2, v1}, Landroidx/media3/ui/AspectRatioFrameLayout;->ﹳٴ(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

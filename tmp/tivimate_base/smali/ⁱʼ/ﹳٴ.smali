.class public final Lⁱʼ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ᵔﹳ;


# instance fields
.field public final ⁱˊ:Landroid/content/res/AssetManager;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetManager;I)V
    .locals 0

    iput p2, p0, Lⁱʼ/ﹳٴ;->ﹳٴ:I

    iput-object p1, p0, Lⁱʼ/ﹳٴ;->ⁱˊ:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lⁱʼ/ʻٴ;)Lⁱʼ/ʼᐧ;
    .locals 2

    .prologue
    iget p1, p0, Lⁱʼ/ﹳٴ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lⁱʼ/ⁱˊ;

    iget-object v0, p0, Lⁱʼ/ﹳٴ;->ⁱˊ:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lⁱʼ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lⁱʼ/ⁱˊ;

    iget-object v0, p0, Lⁱʼ/ﹳٴ;->ⁱˊ:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lⁱʼ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

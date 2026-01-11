.class public final Lˆᴵ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ᵔﹳ;


# instance fields
.field public final ⁱˊ:Landroid/content/Context;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lˆᴵ/ⁱˊ;->ﹳٴ:I

    iput-object p1, p0, Lˆᴵ/ⁱˊ;->ⁱˊ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lⁱʼ/ʻٴ;)Lⁱʼ/ʼᐧ;
    .locals 3

    .prologue
    iget v0, p0, Lˆᴵ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lⁱʼ/ⁱˊ;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lⁱʼ/ʻٴ;->ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lⁱʼ/ʼᐧ;

    move-result-object p1

    iget-object v1, p0, Lˆᴵ/ⁱˊ;->ⁱˊ:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lⁱʼ/ⁱˊ;-><init>(Landroid/content/Context;Lⁱʼ/ʼᐧ;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lⁱʼ/ⁱˊ;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, Lⁱʼ/ʻٴ;->ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lⁱʼ/ʼᐧ;

    move-result-object p1

    iget-object v1, p0, Lˆᴵ/ⁱˊ;->ⁱˊ:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lⁱʼ/ⁱˊ;-><init>(Landroid/content/Context;Lⁱʼ/ʼᐧ;)V

    return-object v0

    :pswitch_1
    new-instance p1, Lˆᴵ/ʽ;

    iget-object v0, p0, Lˆᴵ/ⁱˊ;->ⁱˊ:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lˆᴵ/ʽ;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lⁱʼ/ⁱˊ;

    iget-object v0, p0, Lˆᴵ/ⁱˊ;->ⁱˊ:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lⁱʼ/ⁱˊ;-><init>(Landroid/content/Context;Lˆᴵ/ⁱˊ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lⁱʼ/ⁱˊ;

    iget-object v0, p0, Lˆᴵ/ⁱˊ;->ⁱˊ:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lⁱʼ/ⁱˊ;-><init>(Landroid/content/Context;Lˆᴵ/ⁱˊ;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lⁱʼ/ⁱˊ;

    iget-object v0, p0, Lˆᴵ/ⁱˊ;->ⁱˊ:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lⁱʼ/ⁱˊ;-><init>(Landroid/content/Context;Lˆᴵ/ⁱˊ;)V

    return-object p1

    :pswitch_5
    new-instance p1, Lˆᴵ/ʽ;

    iget-object v0, p0, Lˆᴵ/ⁱˊ;->ⁱˊ:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lˆᴵ/ʽ;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_6
    new-instance p1, Lˆᴵ/ʽ;

    iget-object v0, p0, Lˆᴵ/ⁱˊ;->ⁱˊ:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lˆᴵ/ʽ;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

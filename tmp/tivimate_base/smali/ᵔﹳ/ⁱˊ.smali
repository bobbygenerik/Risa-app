.class public final Lᵔﹳ/ⁱˊ;
.super Lᵔﹳ/ˑﹳ;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic ʽʽ:I

.field public ʾˋ:Lᵔﹳ/ʽ;

.field public ᴵˊ:Lᵔﹳ/ʽ;


# direct methods
.method public constructor <init>(Lᵔﹳ/ʽ;Lᵔﹳ/ʽ;I)V
    .locals 0

    iput p3, p0, Lᵔﹳ/ⁱˊ;->ʽʽ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lᵔﹳ/ⁱˊ;->ʾˋ:Lᵔﹳ/ʽ;

    iput-object p1, p0, Lᵔﹳ/ⁱˊ;->ᴵˊ:Lᵔﹳ/ʽ;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔﹳ/ⁱˊ;->ᴵˊ:Lᵔﹳ/ʽ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lᵔﹳ/ⁱˊ;->ᴵˊ:Lᵔﹳ/ʽ;

    iget-object v1, p0, Lᵔﹳ/ⁱˊ;->ʾˋ:Lᵔﹳ/ʽ;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lᵔﹳ/ⁱˊ;->ⁱˊ(Lᵔﹳ/ʽ;)Lᵔﹳ/ʽ;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lᵔﹳ/ⁱˊ;->ᴵˊ:Lᵔﹳ/ʽ;

    return-object v0
.end method

.method public final ⁱˊ(Lᵔﹳ/ʽ;)Lᵔﹳ/ʽ;
    .locals 1

    .prologue
    iget v0, p0, Lᵔﹳ/ⁱˊ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lᵔﹳ/ʽ;->ˈٴ:Lᵔﹳ/ʽ;

    return-object p1

    :pswitch_0
    iget-object p1, p1, Lᵔﹳ/ʽ;->ʽʽ:Lᵔﹳ/ʽ;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Lᵔﹳ/ʽ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lᵔﹳ/ⁱˊ;->ʾˋ:Lᵔﹳ/ʽ;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lᵔﹳ/ⁱˊ;->ᴵˊ:Lᵔﹳ/ʽ;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lᵔﹳ/ⁱˊ;->ᴵˊ:Lᵔﹳ/ʽ;

    iput-object v1, p0, Lᵔﹳ/ⁱˊ;->ʾˋ:Lᵔﹳ/ʽ;

    :cond_0
    iget-object v0, p0, Lᵔﹳ/ⁱˊ;->ʾˋ:Lᵔﹳ/ʽ;

    if-ne v0, p1, :cond_1

    iget v2, p0, Lᵔﹳ/ⁱˊ;->ʽʽ:I

    packed-switch v2, :pswitch_data_0

    iget-object v0, v0, Lᵔﹳ/ʽ;->ʽʽ:Lᵔﹳ/ʽ;

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lᵔﹳ/ʽ;->ˈٴ:Lᵔﹳ/ʽ;

    :goto_0
    iput-object v0, p0, Lᵔﹳ/ⁱˊ;->ʾˋ:Lᵔﹳ/ʽ;

    :cond_1
    iget-object v0, p0, Lᵔﹳ/ⁱˊ;->ᴵˊ:Lᵔﹳ/ʽ;

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lᵔﹳ/ⁱˊ;->ʾˋ:Lᵔﹳ/ʽ;

    if-eq v0, p1, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lᵔﹳ/ⁱˊ;->ⁱˊ(Lᵔﹳ/ʽ;)Lᵔﹳ/ʽ;

    move-result-object v1

    :cond_3
    :goto_1
    iput-object v1, p0, Lᵔﹳ/ⁱˊ;->ᴵˊ:Lᵔﹳ/ʽ;

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

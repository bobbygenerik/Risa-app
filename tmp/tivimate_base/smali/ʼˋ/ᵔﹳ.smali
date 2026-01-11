.class public final Lʼˋ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼˋ/ʾᵎ;
.implements Lʼﾞ/ʾᵎ;


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʼˋ/ᵔﹳ;->ﹳٴ:I

    iput-object p2, p0, Lʼˋ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Lﹳᴵ/ﹳٴ;
    .locals 1

    .prologue
    iget v0, p0, Lʼˋ/ᵔﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼˋ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˊˎ/ˈ;

    iget-object v0, v0, Lˊˎ/ˈ;->ﹳٴ:Lˊˎ/ﹳٴ;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʼˋ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lʼˋ/ـˆ;

    iget-object v0, v0, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Ljava/lang/String;Lᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʼˋ/ᵔﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼˋ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˊˎ/ˈ;

    invoke-virtual {v0, p1, p2, p3}, Lˊˎ/ˈ;->ﹳٴ(Ljava/lang/String;Lᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lʼˋ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lʼˋ/ـˆ;

    invoke-virtual {v0, p1, p2, p3}, Lʼˋ/ـˆ;->ﹳٴ(Ljava/lang/String;Lᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

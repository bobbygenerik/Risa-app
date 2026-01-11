.class public final synthetic Lⁱי/ˑٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Landroid/util/Pair;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lⁱי/ـˏ;


# direct methods
.method public synthetic constructor <init>(Lⁱי/ـˏ;Landroid/util/Pair;I)V
    .locals 0

    iput p3, p0, Lⁱי/ˑٴ;->ʾˋ:I

    iput-object p1, p0, Lⁱי/ˑٴ;->ᴵˊ:Lⁱי/ـˏ;

    iput-object p2, p0, Lⁱי/ˑٴ;->ʽʽ:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    iget v0, p0, Lⁱי/ˑٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lⁱי/ˑٴ;->ᴵˊ:Lⁱי/ـˏ;

    iget-object v0, v0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object v0, v0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ˆʾ;

    iget-object v1, p0, Lⁱי/ˑٴ;->ʽʽ:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    invoke-virtual {v0, v2, v1}, Lʻʿ/ˆʾ;->ʼˎ(ILﹳᵢ/ᵢˏ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lⁱי/ˑٴ;->ᴵˊ:Lⁱי/ـˏ;

    iget-object v0, v0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object v0, v0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ˆʾ;

    iget-object v1, p0, Lⁱי/ˑٴ;->ʽʽ:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    invoke-virtual {v0, v2, v1}, Lʻʿ/ˆʾ;->ʾˋ(ILﹳᵢ/ᵢˏ;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lⁱי/ˑٴ;->ᴵˊ:Lⁱי/ـˏ;

    iget-object v0, v0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object v0, v0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ˆʾ;

    iget-object v1, p0, Lⁱי/ˑٴ;->ʽʽ:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    invoke-virtual {v0, v2, v1}, Lʻʿ/ˆʾ;->ˊʻ(ILﹳᵢ/ᵢˏ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

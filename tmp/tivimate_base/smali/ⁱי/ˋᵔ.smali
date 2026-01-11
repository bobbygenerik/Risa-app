.class public final synthetic Lⁱי/ˋᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Landroid/util/Pair;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Lﹳᵢ/ﹳᐧ;

.field public final synthetic ᴵˊ:Lⁱי/ـˏ;

.field public final synthetic ᴵᵔ:Lˎʾ/ᵎﹶ;


# direct methods
.method public synthetic constructor <init>(Lⁱי/ـˏ;Landroid/util/Pair;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V
    .locals 0

    iput p5, p0, Lⁱי/ˋᵔ;->ʾˋ:I

    iput-object p1, p0, Lⁱי/ˋᵔ;->ᴵˊ:Lⁱי/ـˏ;

    iput-object p2, p0, Lⁱי/ˋᵔ;->ʽʽ:Landroid/util/Pair;

    iput-object p3, p0, Lⁱי/ˋᵔ;->ˈٴ:Lﹳᵢ/ﹳᐧ;

    iput-object p4, p0, Lⁱי/ˋᵔ;->ᴵᵔ:Lˎʾ/ᵎﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    iget v0, p0, Lⁱי/ˋᵔ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lⁱי/ˋᵔ;->ᴵˊ:Lⁱי/ـˏ;

    iget-object v0, v0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object v0, v0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ˆʾ;

    iget-object v1, p0, Lⁱי/ˋᵔ;->ʽʽ:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    iget-object v3, p0, Lⁱי/ˋᵔ;->ˈٴ:Lﹳᵢ/ﹳᐧ;

    iget-object v4, p0, Lⁱי/ˋᵔ;->ᴵᵔ:Lˎʾ/ᵎﹶ;

    invoke-virtual {v0, v2, v1, v3, v4}, Lʻʿ/ˆʾ;->ﾞᴵ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lⁱי/ˋᵔ;->ᴵˊ:Lⁱי/ـˏ;

    iget-object v0, v0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object v0, v0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ˆʾ;

    iget-object v1, p0, Lⁱי/ˋᵔ;->ʽʽ:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    iget-object v3, p0, Lⁱי/ˋᵔ;->ˈٴ:Lﹳᵢ/ﹳᐧ;

    iget-object v4, p0, Lⁱי/ˋᵔ;->ᴵᵔ:Lˎʾ/ᵎﹶ;

    invoke-virtual {v0, v2, v1, v3, v4}, Lʻʿ/ˆʾ;->ﾞʻ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

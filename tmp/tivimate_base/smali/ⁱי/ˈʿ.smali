.class public final synthetic Lⁱי/ˈʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Landroid/util/Pair;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Lˎʾ/ᵎﹶ;

.field public final synthetic ᴵˊ:Lⁱי/ـˏ;


# direct methods
.method public synthetic constructor <init>(Lⁱי/ـˏ;Landroid/util/Pair;Lˎʾ/ᵎﹶ;I)V
    .locals 0

    iput p4, p0, Lⁱי/ˈʿ;->ʾˋ:I

    iput-object p1, p0, Lⁱי/ˈʿ;->ᴵˊ:Lⁱי/ـˏ;

    iput-object p2, p0, Lⁱי/ˈʿ;->ʽʽ:Landroid/util/Pair;

    iput-object p3, p0, Lⁱי/ˈʿ;->ˈٴ:Lˎʾ/ᵎﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    iget v0, p0, Lⁱי/ˈʿ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lⁱי/ˈʿ;->ᴵˊ:Lⁱי/ـˏ;

    iget-object v0, v0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object v0, v0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ˆʾ;

    iget-object v1, p0, Lⁱי/ˈʿ;->ʽʽ:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    iget-object v3, p0, Lⁱי/ˈʿ;->ˈٴ:Lˎʾ/ᵎﹶ;

    invoke-virtual {v0, v2, v1, v3}, Lʻʿ/ˆʾ;->יـ(ILﹳᵢ/ᵢˏ;Lˎʾ/ᵎﹶ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lⁱי/ˈʿ;->ᴵˊ:Lⁱי/ـˏ;

    iget-object v0, v0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object v0, v0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ˆʾ;

    iget-object v1, p0, Lⁱי/ˈʿ;->ʽʽ:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lⁱי/ˈʿ;->ˈٴ:Lˎʾ/ᵎﹶ;

    invoke-virtual {v0, v2, v1, v3}, Lʻʿ/ˆʾ;->ـˆ(ILﹳᵢ/ᵢˏ;Lˎʾ/ᵎﹶ;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

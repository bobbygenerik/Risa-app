.class public final synthetic Lﹳᵢ/ᴵʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʽ/ˑﹳ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lﹳᵢ/ᴵʼ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lﹳᵢ/ᴵʼ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lﹶˎ/ˉˆ;

    invoke-virtual {p1}, Lﹶˎ/ˉˆ;->ﹳٴ()V

    iget-object p1, p1, Lﹶˎ/ˉˆ;->ˈˏ:Lﹳᵢ/ʻᵎ;

    iget-object p1, p1, Lﹳᵢ/ʻᵎ;->ⁱˊ:Lʼʻ/ʿᵢ;

    new-instance v0, Lﹳᵢ/ᴵʼ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lﹳᵢ/ᴵʼ;-><init>(I)V

    invoke-static {p1, v0}, Lʼʻ/ﹳᐧ;->ʽﹳ(Ljava/util/List;Lˆʽ/ˑﹳ;)Ljava/util/AbstractList;

    move-result-object p1

    invoke-static {p1}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lʽⁱ/ـˏ;

    iget p1, p1, Lʽⁱ/ـˏ;->ʽ:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

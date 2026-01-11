.class public final Lﹶﾞ/ـᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ʽ:Ljava/lang/Object;

.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lﹶﾞ/ʼـ;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lﹶﾞ/ـᵎ;->ﹳٴ:I

    iput-object p2, p0, Lﹶﾞ/ـᵎ;->ʽ:Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ـᵎ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ᵢי;Lﹶﾞ/ʻᐧ;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lﹶﾞ/ـᵎ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lﹶﾞ/ـᵎ;->ʽ:Ljava/lang/Object;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ـᵎ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lﹶﾞ/ـᵎ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ـᵎ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʻᐧ;

    iget-object v1, v0, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v2, p0, Lﹶﾞ/ـᵎ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵢי;

    invoke-virtual {v2, v1}, Lﹶﾞ/ᵢי;->ﹳٴ(Ljava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v1

    sget-object v3, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v1, v3}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lﹶﾞ/ʻᐧ;->ʼˈ:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-static {v4, v1}, Lﹶﾞ/ᐧˎ;->ʽ(ILjava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v1

    invoke-virtual {v1, v3}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lﹶﾞ/ᵢי;->ᐧᴵ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʿᵢ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʿᵢ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Analytics storage consent denied. Returning null app instance id"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ـᵎ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʼـ;

    iget-object v1, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    iget-object v1, p0, Lﹶﾞ/ـᵎ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ʻᐧ;

    new-instance v2, Lﹶﾞ/ʼˎ;

    iget-object v0, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    iget-object v1, v1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lﹶﾞ/ᵢי;->ـᵎ(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v2, v0}, Lﹶﾞ/ʼˎ;-><init>(Landroid/os/Bundle;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lﹶﾞ/ـᵎ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʼـ;

    iget-object v1, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    iget-object v0, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    iget-object v0, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v1, p0, Lﹶﾞ/ـᵎ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lﹶﾞ/ˉʿ;->ـˑ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

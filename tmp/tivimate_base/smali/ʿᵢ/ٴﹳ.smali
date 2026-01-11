.class public final Lʿᵢ/ٴﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈי/ﾞᴵ;


# instance fields
.field public final ʾˋ:Lʿᵢ/ٴﹳ;

.field public final ᴵˊ:Lʿᵢ/ˈٴ;


# direct methods
.method public constructor <init>(Lʿᵢ/ٴﹳ;Lʿᵢ/ˈٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿᵢ/ٴﹳ;->ʾˋ:Lʿᵢ/ٴﹳ;

    iput-object p2, p0, Lʿᵢ/ٴﹳ;->ᴵˊ:Lʿᵢ/ˈٴ;

    return-void
.end method


# virtual methods
.method public final getKey()Lˈי/ᵎﹶ;
    .locals 1

    sget-object v0, Lʿᵢ/ˑʼ;->ʾˋ:Lʿᵢ/ˑʼ;

    return-object v0
.end method

.method public final ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;
    .locals 0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ˈ;->ᵔﹳ(Lˈי/ﾞᴵ;Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p1

    return-object p1
.end method

.method public final ـˆ(Lˈי/ᵎﹶ;)Lˈי/ᵔᵢ;
    .locals 0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ˈ;->ʾˋ(Lˈי/ﾞᴵ;Lˈי/ᵎﹶ;)Lˈי/ᵔᵢ;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ(Lʿᵢ/ˈٴ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʿᵢ/ٴﹳ;->ᴵˊ:Lʿᵢ/ˈٴ;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lʿᵢ/ٴﹳ;->ʾˋ:Lʿᵢ/ٴﹳ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʿᵢ/ٴﹳ;->ﹳٴ(Lʿᵢ/ˈٴ;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;
    .locals 0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ʽ;->ˏי(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p1

    return-object p1
.end method

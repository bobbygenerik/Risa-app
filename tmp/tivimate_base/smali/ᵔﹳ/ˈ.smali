.class public final Lᵔﹳ/ˈ;
.super Lᵔﹳ/ˑﹳ;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic ʽʽ:Lᵔﹳ/ﾞᴵ;

.field public ʾˋ:Lᵔﹳ/ʽ;

.field public ᴵˊ:Z


# direct methods
.method public constructor <init>(Lᵔﹳ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔﹳ/ˈ;->ʽʽ:Lᵔﹳ/ﾞᴵ;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lᵔﹳ/ˈ;->ᴵˊ:Z

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .prologue
    iget-boolean v0, p0, Lᵔﹳ/ˈ;->ᴵˊ:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lᵔﹳ/ˈ;->ʽʽ:Lᵔﹳ/ﾞᴵ;

    iget-object v0, v0, Lᵔﹳ/ﾞᴵ;->ʾˋ:Lᵔﹳ/ʽ;

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lᵔﹳ/ˈ;->ʾˋ:Lᵔﹳ/ʽ;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lᵔﹳ/ʽ;->ʽʽ:Lᵔﹳ/ʽ;

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lᵔﹳ/ˈ;->ᴵˊ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lᵔﹳ/ˈ;->ᴵˊ:Z

    iget-object v0, p0, Lᵔﹳ/ˈ;->ʽʽ:Lᵔﹳ/ﾞᴵ;

    iget-object v0, v0, Lᵔﹳ/ﾞᴵ;->ʾˋ:Lᵔﹳ/ʽ;

    iput-object v0, p0, Lᵔﹳ/ˈ;->ʾˋ:Lᵔﹳ/ʽ;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lᵔﹳ/ˈ;->ʾˋ:Lᵔﹳ/ʽ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lᵔﹳ/ʽ;->ʽʽ:Lᵔﹳ/ʽ;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lᵔﹳ/ˈ;->ʾˋ:Lᵔﹳ/ʽ;

    :goto_1
    iget-object v0, p0, Lᵔﹳ/ˈ;->ʾˋ:Lᵔﹳ/ʽ;

    return-object v0
.end method

.method public final ﹳٴ(Lᵔﹳ/ʽ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔﹳ/ˈ;->ʾˋ:Lᵔﹳ/ʽ;

    if-ne p1, v0, :cond_1

    iget-object p1, v0, Lᵔﹳ/ʽ;->ˈٴ:Lᵔﹳ/ʽ;

    iput-object p1, p0, Lᵔﹳ/ˈ;->ʾˋ:Lᵔﹳ/ʽ;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lᵔﹳ/ˈ;->ᴵˊ:Z

    :cond_1
    return-void
.end method

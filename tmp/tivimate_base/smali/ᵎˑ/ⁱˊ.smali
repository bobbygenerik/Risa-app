.class public final Lᵎˑ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lﾞʼ/ﹳٴ;


# instance fields
.field public ﹳٴ:Lˏˆ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lᵎˑ/ⁱˊ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lᵎˑ/ⁱˊ;->ⁱˊ:Lﾞʼ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/AutoCloseable;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lᵎˑ/ⁱˊ;->ﹳٴ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lˑˋ/ˈ;

    iget-object v1, v0, Lˑˋ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˉᵔ/ʽ;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lˉᵔ/ʽ;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, p1}, Lˑˋ/ˈ;->ᵎﹶ(Ljava/lang/AutoCloseable;)[Lˑי/ⁱˊ;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object v3, v0, Lˑˋ/ˈ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lˉʼ/ʼˎ;

    invoke-virtual {v3, v2}, Lˉʼ/ʼˎ;->ﹳٴ(Ljava/lang/Class;)Lˉʼ/ᵔᵢ;

    move-result-object v3

    iget-object v3, v3, Lˉʼ/ᵔᵢ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lˉʼ/ᵎﹶ;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lˉʼ/ᵎﹶ;

    array-length v5, v3

    if-nez v5, :cond_1

    invoke-virtual {v1, v2}, Lˉᵔ/ʽ;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-array v1, v5, [Lˑי/ⁱˊ;

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v3, v4

    iget-object v6, v0, Lˑˋ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v6, Lﹳˋ/ʼˎ;

    iget-object v7, v0, Lˑˋ/ˈ;->ٴᵢ:Ljava/lang/Object;

    check-cast v7, Lﹳʽ/ˊʻ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v2}, Lﹳˋ/ʼˎ;->ᴵᵔ(Lﹳʽ/ˊʻ;Lˉʼ/ᵎﹶ;)Lˑי/ⁱˊ;

    move-result-object v2

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, v1}, Lˑˋ/ˈ;->ﾞʻ(Ljava/lang/AutoCloseable;[Lˑי/ⁱˊ;)V

    return-void

    :cond_3
    array-length v0, v3

    :goto_1
    if-ge v4, v0, :cond_4

    aget-object v1, v3, v4

    invoke-virtual {v1, p1}, Lˑי/ⁱˊ;->ﹳٴ(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

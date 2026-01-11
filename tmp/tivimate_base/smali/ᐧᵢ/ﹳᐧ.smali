.class public final Lᐧᵢ/ﹳᐧ;
.super Lᐧᵢ/יـ;
.source "SourceFile"


# instance fields
.field public final ˈ:Lᐧᵢ/ﾞᴵ;

.field public final ˑﹳ:Z


# direct methods
.method public constructor <init>(Lᐧᵢ/ˊˋ;Lˎᵢ/ˈ;Lᐧᵢ/ﾞʻ;Lᐧᵢ/ﾞᴵ;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lᐧᵢ/יـ;-><init>(Lᐧᵢ/ˊˋ;Lˎᵢ/ˈ;Lᐧᵢ/ﾞʻ;)V

    iput-object p4, p0, Lᐧᵢ/ﹳᐧ;->ˈ:Lᐧᵢ/ﾞᴵ;

    iput-boolean p5, p0, Lᐧᵢ/ﹳᐧ;->ˑﹳ:Z

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lᐧᵢ/ᴵˊ;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lᐧᵢ/ﹳᐧ;->ˈ:Lᐧᵢ/ﾞᴵ;

    invoke-interface {v0, p1}, Lᐧᵢ/ﾞᴵ;->ⁱˊ(Lᐧᵢ/ᴵˊ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᐧᵢ/ˈ;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    check-cast p2, Lˈי/ˈ;

    :try_start_0
    iget-boolean v0, p0, Lᐧᵢ/ﹳᐧ;->ˑﹳ:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lᐧᵢ/ʿᵢ;->ʽ(Lᐧᵢ/ˈ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Lᐧᵢ/ʿᵢ;->ⁱˊ(Lᐧᵢ/ˈ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_0
    invoke-static {p1, p2}, Lᐧᵢ/ʿᵢ;->ʼᐧ(Ljava/lang/Throwable;Lˈי/ˈ;)V

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    return-object p1

    :goto_1
    throw p1
.end method

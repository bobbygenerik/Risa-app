.class public final Lˉˆ/ᵢˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/lang/Object;

.field public ˈ:Ljava/io/Serializable;

.field public ⁱˊ:Z

.field public ﹳٴ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˉˆ/ᵢˋ;->ﹳٴ:Z

    return-void
.end method


# virtual methods
.method public varargs ʽ([Lˎᵢ/ٴᵢ;)V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lˉˆ/ᵢˋ;->ﹳٴ:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    iget-object v4, v4, Lˎᵢ/ٴᵢ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-boolean v0, p0, Lˉˆ/ᵢˋ;->ﹳٴ:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lˉˆ/ᵢˋ;->ˈ:Ljava/io/Serializable;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs ⁱˊ([Lˎᵢ/ᵔᵢ;)V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lˉˆ/ᵢˋ;->ﹳٴ:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    iget-object v4, v4, Lˎᵢ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-boolean v0, p0, Lˉˆ/ᵢˋ;->ﹳٴ:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lˉˆ/ᵢˋ;->ʽ:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ﹳٴ()Lˎᵢ/ˆʾ;
    .locals 5

    new-instance v0, Lˎᵢ/ˆʾ;

    iget-boolean v1, p0, Lˉˆ/ᵢˋ;->ﹳٴ:Z

    iget-boolean v2, p0, Lˉˆ/ᵢˋ;->ⁱˊ:Z

    iget-object v3, p0, Lˉˆ/ᵢˋ;->ʽ:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p0, Lˉˆ/ᵢˋ;->ˈ:Ljava/io/Serializable;

    check-cast v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lˎᵢ/ˆʾ;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.class public final Lʼˋ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᴵ/ﹳٴ;
.implements Lﹶי/ﹳٴ;


# instance fields
.field public ʽʽ:Lˈי/ᵔᵢ;

.field public final ʾˋ:Lﹳᴵ/ﹳٴ;

.field public ˈٴ:Ljava/lang/Throwable;

.field public final ᴵˊ:Lﹶי/ʽ;


# direct methods
.method public constructor <init>(Lﹳᴵ/ﹳٴ;)V
    .locals 1

    invoke-static {}, Lﹶי/ˈ;->ﹳٴ()Lﹶי/ʽ;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼˋ/ᵔᵢ;->ʾˋ:Lﹳᴵ/ﹳٴ;

    iput-object v0, p0, Lʼˋ/ᵔᵢ;->ᴵˊ:Lﹶי/ʽ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lʼˋ/ᵔᵢ;->ʾˋ:Lﹳᴵ/ﹳٴ;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʼˋ/ᵔᵢ;->ʾˋ:Lﹳᴵ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʼˋ/ᵔᵢ;->ᴵˊ:Lﹶי/ʽ;

    invoke-virtual {v0, p1}, Lﹶי/ʽ;->ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˉˆ()Z
    .locals 1

    iget-object v0, p0, Lʼˋ/ᵔᵢ;->ᴵˊ:Lﹶי/ʽ;

    invoke-virtual {v0}, Lﹶי/ʽ;->ˉˆ()Z

    move-result v0

    return v0
.end method

.method public final ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;
    .locals 1

    iget-object v0, p0, Lʼˋ/ᵔᵢ;->ʾˋ:Lﹳᴵ/ﹳٴ;

    invoke-interface {v0, p1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p1

    return-object p1
.end method

.method public final ᵎﹶ(Ljava/lang/Object;)V
    .locals 1

    const/4 p1, 0x0

    iget-object v0, p0, Lʼˋ/ᵔᵢ;->ᴵˊ:Lﹶי/ʽ;

    invoke-virtual {v0, p1}, Lﹶי/ʽ;->ᵎﹶ(Ljava/lang/Object;)V

    return-void
.end method

.method public final ﹳᐧ(Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lʼˋ/ᵔᵢ;->ʽʽ:Lˈי/ᵔᵢ;

    const/16 v1, 0xa

    if-nez v0, :cond_1

    iget-object v0, p0, Lʼˋ/ᵔᵢ;->ˈٴ:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\t\tStatus: Free connection"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    :goto_0
    const-string v0, "\t\tStatus: Acquired connection"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lʼˋ/ᵔᵢ;->ʽʽ:Lˈי/ᵔᵢ;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t\tCoroutine: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lʼˋ/ᵔᵢ;->ˈٴ:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    const-string v2, "\t\tAcquired:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lﹶˑ/ˆʾ;->ʾˊ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gtz v2, :cond_3

    sget-object v0, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    goto :goto_3

    :cond_3
    if-ne v2, v3, :cond_4

    invoke-static {v0}, Lﹶˈ/ˆʾ;->ـᵎ(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    instance-of v2, v0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v0, v4

    :goto_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    return-void
.end method

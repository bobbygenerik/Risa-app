.class public final Lʿᵢ/ˑﹳ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public ˊʻ:I

.field public final synthetic ٴᵢ:Ljava/lang/Object;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lˈי/ˈ;I)V
    .locals 0

    iput p3, p0, Lʿᵢ/ˑﹳ;->ᴵᵔ:I

    iput-object p1, p0, Lʿᵢ/ˑﹳ;->ٴᵢ:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lʿᵢ/ˑﹳ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lʿᵢ/ˑﹳ;->ˊʻ:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lʿᵢ/ˑﹳ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Lʿᵢ/ʾˋ;

    iput v1, p0, Lʿᵢ/ˑﹳ;->ˊʻ:I

    invoke-virtual {p1, p0}, Lʿᵢ/ʾˋ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_2

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1

    :pswitch_0
    iget v0, p0, Lʿᵢ/ˑﹳ;->ˊʻ:I

    sget-object v1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_3

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lʿᵢ/ˑﹳ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Lᐧᴵ/ʽ;

    iput v2, p0, Lʿᵢ/ˑﹳ;->ˊʻ:I

    iget-object v0, p1, Lᐧᴵ/ʽ;->ˑﹳ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p1, Lᐧᴵ/ʽ;->ﾞᴵ:Ljava/util/Set;

    if-nez v2, :cond_5

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_6
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lᐧᴵ/ʽ;->ˑﹳ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lᐧᴵ/ʽ;->ʽ:Landroid/content/Context;

    if-eqz v0, :cond_8

    iget-object p1, p1, Lᐧᴵ/ʽ;->ˈ:Ljava/lang/String;

    if-eqz p1, :cond_8

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_7

    invoke-static {v0, p1}, Lᐧᴵ/ﹳٴ;->ﹳٴ(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v4, "shared_prefs"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v4, ".xml"

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bak"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_8
    :goto_3
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    :cond_9
    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v1, p1, :cond_a

    move-object v1, p1

    :cond_a
    :goto_4
    return-object v1

    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to delete migrated keys from SharedPreferences."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lʿᵢ/ˑﹳ;->ᴵᵔ:I

    check-cast p1, Lˈי/ˈ;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʿᵢ/ˑﹳ;

    iget-object v1, p0, Lʿᵢ/ˑﹳ;->ٴᵢ:Ljava/lang/Object;

    check-cast v1, Lʿᵢ/ʾˋ;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lʿᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʿᵢ/ˑﹳ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Lʿᵢ/ˑﹳ;

    iget-object v1, p0, Lʿᵢ/ˑﹳ;->ٴᵢ:Ljava/lang/Object;

    check-cast v1, Lᐧᴵ/ʽ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lʿᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʿᵢ/ˑﹳ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

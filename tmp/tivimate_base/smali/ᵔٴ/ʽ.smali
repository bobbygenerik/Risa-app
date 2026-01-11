.class public abstract Lᵔٴ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lcom/parse/ʼᐧ;

.field public static final ﹳٴ:Lˋˋ/ـˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˋˋ/ـˊ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lˋˋ/ـˊ;-><init>(I)V

    sput-object v0, Lᵔٴ/ʽ;->ﹳٴ:Lˋˋ/ـˊ;

    new-instance v0, Lcom/parse/ʼᐧ;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/parse/ʼᐧ;-><init>(I)V

    sput-object v0, Lᵔٴ/ʽ;->ⁱˊ:Lcom/parse/ʼᐧ;

    return-void
.end method

.method public static ʽ(Landroid/content/Context;Lᵔٴ/ˈ;Ljava/lang/String;)[Lᵔٴ/ᵔᵢ;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "content"

    const-string v3, "FontProvider.query"

    invoke-static {v3}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v2, v5, :cond_0

    new-instance v2, Lᐧﹳ/ʽ;

    invoke-direct {v2, v0, v4}, Lᐧﹳ/ʽ;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lˊⁱ/ˑﹳ;

    invoke-direct {v2, v0, v4}, Lˊⁱ/ˑﹳ;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "_id"

    const-string v7, "file_id"

    const-string v8, "font_ttc_index"

    const-string v9, "font_variation_settings"

    const-string v10, "font_weight"

    const-string v11, "font_italic"

    const-string v12, "result_code"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v0

    const-string v6, "ContentQueryWrapper.query"

    invoke-static {v6}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, p1

    :try_start_2
    iget-object v6, v6, Lᵔٴ/ˈ;->ʽ:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v0, v6}, Lᵔٴ/ﹳٴ;->ﹳٴ(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_7

    const-string v3, "result_code"

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "_id"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_id"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "font_ttc_index"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "font_weight"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "font_italic"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, -0x1

    if-eq v3, v12, :cond_1

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v17, v13

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_1
    const/16 v17, 0x0

    :goto_2
    if-eq v9, v12, :cond_2

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move v14, v13

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    if-ne v8, v12, :cond_3

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v4, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    :goto_4
    move-object v13, v12

    const/4 v12, -0x1

    goto :goto_5

    :cond_3
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    goto :goto_4

    :goto_5
    if-eq v10, v12, :cond_4

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    goto :goto_6

    :cond_4
    const/16 v15, 0x190

    :goto_6
    if-eq v11, v12, :cond_5

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v0, 0x1

    if-ne v12, v0, :cond_5

    move/from16 v16, v0

    goto :goto_7

    :cond_5
    const/16 v16, 0x0

    :goto_7
    new-instance v12, Lᵔٴ/ᵔᵢ;

    invoke-direct/range {v12 .. v17}, Lᵔٴ/ᵔᵢ;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_6
    move-object v3, v6

    :cond_7
    if-eqz v5, :cond_8

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-interface {v2}, Lᵔٴ/ﹳٴ;->close()V

    const/4 v0, 0x0

    new-array v0, v0, [Lᵔٴ/ᵔᵢ;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lᵔٴ/ᵔᵢ;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_8
    if-eqz v5, :cond_9

    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_9
    invoke-interface {v2}, Lᵔٴ/ﹳٴ;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public static ⁱˊ(Landroid/content/pm/PackageManager;Lᵔٴ/ˈ;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 9

    .prologue
    sget-object v0, Lᵔٴ/ʽ;->ⁱˊ:Lcom/parse/ʼᐧ;

    sget-object v1, Lᵔٴ/ʽ;->ﹳٴ:Lˋˋ/ـˊ;

    const-string v2, "Found content provider "

    const-string v3, "No package found for authority: "

    const-string v4, "FontProvider.getProvider"

    invoke-static {v4}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p1, Lᵔٴ/ˈ;->ˈ:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p1, Lᵔٴ/ˈ;->ﹳٴ:Ljava/lang/String;

    iget-object p1, p1, Lᵔٴ/ˈ;->ⁱˊ:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p2, v6}, Lˉٴ/ⁱˊ;->ﾞʻ(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v4

    :goto_0
    new-instance p2, Lᵔٴ/ⁱˊ;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v5, p2, Lᵔٴ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    iput-object p1, p2, Lᵔٴ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    iput-object v4, p2, Lᵔٴ/ⁱˊ;->ʽ:Ljava/util/List;

    invoke-virtual {v1, p2}, Lˋˋ/ـˊ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ProviderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v7

    :cond_1
    :try_start_2
    invoke-virtual {p0, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v3, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object p1, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, p0, v3

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move p0, v6

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_3

    goto :goto_4

    :cond_3
    move v3, v6

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v5, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_4

    :goto_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1, p2, v7}, Lˋˋ/ـˊ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v7

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p0, 0x0

    return-object p0

    :cond_7
    :try_start_3
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but package was not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public static ﹳٴ(Landroid/content/Context;Ljava/util/List;)Lיי/ﾞᴵ;
    .locals 6

    .prologue
    const-string v0, "FontProvider.getFontFamilyResult"

    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵔٴ/ˈ;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_0

    iget-object v4, v3, Lᵔٴ/ˈ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v4}, Lᵎⁱ/ˑﹳ;->ʽ(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Lᵎⁱ/ˑﹳ;->ˈ(Landroid/graphics/Typeface;)Landroid/graphics/fonts/Font;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v5, Lᵔٴ/ᵔᵢ;

    iget-object v3, v3, Lᵔٴ/ˈ;->ﾞᴵ:Ljava/lang/String;

    invoke-direct {v5, v4, v3}, Lᵔٴ/ᵔᵢ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lᵔٴ/ᵔᵢ;

    aput-object v5, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lᵔٴ/ʽ;->ⁱˊ(Landroid/content/pm/PackageManager;Lᵔٴ/ˈ;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance p0, Lיי/ﾞᴵ;

    invoke-direct {p0}, Lיי/ﾞᴵ;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :cond_1
    :try_start_1
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lᵔٴ/ʽ;->ʽ(Landroid/content/Context;Lᵔٴ/ˈ;Ljava/lang/String;)[Lᵔٴ/ᵔᵢ;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lיי/ﾞᴵ;

    invoke-direct {p0, v0}, Lיי/ﾞᴵ;-><init>(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

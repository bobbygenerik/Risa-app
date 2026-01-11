.class public final Lˆי/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Ljava/nio/charset/Charset;


# instance fields
.field public final ﹳٴ:Lˑˋ/ˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lˆי/ᵎﹶ;->ⁱˊ:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lˑˋ/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆי/ᵎﹶ;->ﹳٴ:Lˑˋ/ˈ;

    return-void
.end method

.method public static ˑﹳ(Ljava/util/List;)Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v3, Lˆי/ᵔʾ;->ﹳٴ:Lﹳי/ʽ;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lﹳי/ʽ;->ﾞᴵ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Exception parsing rollout assignment!"

    const-string v5, "FirebaseCrashlytics"

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "rolloutsState"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ᵎﹶ(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleted corrupt file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nReason: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "FirebaseCrashlytics"

    nop

    :cond_0
    return-void
.end method

.method public static ⁱˊ(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "rolloutsState"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lˆי/ᵔʾ;->ﹳٴ(Ljava/lang/String;)Lˆי/ⁱˊ;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed de-serializing rollouts state. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FirebaseCrashlytics"

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static ﹳٴ(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5

    .prologue
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static ﾞᴵ(Ljava/io/File;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleted corrupt file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "FirebaseCrashlytics"

    nop

    :cond_0
    return-void
.end method


# virtual methods
.method public final ʽ(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 6

    .prologue
    const-string v0, "Failed to close user metadata file."

    iget-object v1, p0, Lˆי/ᵎﹶ;->ﹳٴ:Lˑˋ/ˈ;

    if-eqz p2, :cond_0

    const-string p2, "internal-keys"

    invoke-virtual {v1, p1, p2}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "keys"

    invoke-virtual {v1, p1, p2}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lﹳˎ/ᵎﹶ;->ʼˎ(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lˆי/ᵎﹶ;->ﹳٴ(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    :goto_1
    :try_start_2
    const-string v2, "Error deserializing user metadata."

    const-string v3, "FirebaseCrashlytics"

    nop

    invoke-static {p2}, Lˆי/ᵎﹶ;->ﾞᴵ(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1

    :goto_2
    invoke-static {v1, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The file has a length of zero for session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lˆי/ᵎﹶ;->ᵎﹶ(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1
.end method

.method public final ˈ(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const-string v0, "Failed to close user metadata file."

    const-string v1, "Loaded userId "

    iget-object v2, p0, Lˆי/ᵎﹶ;->ﹳٴ:Lˑˋ/ˈ;

    const-string v3, "user-data"

    invoke-virtual {v2, p1, v3}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, "FirebaseCrashlytics"

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v3}, Lﹳˎ/ᵎﹶ;->ʼˎ(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "userId"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for session "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-static {v3, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v7

    :goto_1
    move-object v6, v3

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v3, v6

    :goto_2
    :try_start_2
    const-string v1, "Error deserializing user metadata."

    nop

    invoke-static {v2}, Lˆי/ᵎﹶ;->ﾞᴵ(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v6

    :goto_3
    invoke-static {v6, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_4
    const-string v0, "No userId set for session "

    invoke-static {v0, p1}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    nop

    :cond_4
    invoke-static {v2}, Lˆי/ᵎﹶ;->ﾞᴵ(Ljava/io/File;)V

    return-object v6
.end method

.method public final ᵔᵢ(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 5

    .prologue
    const-string v0, "Failed to close key/value metadata file."

    iget-object v1, p0, Lˆי/ᵎﹶ;->ﹳٴ:Lˑˋ/ˈ;

    if-eqz p3, :cond_0

    const-string p3, "internal-keys"

    invoke-virtual {v1, p1, p3}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p3, "keys"

    invoke-virtual {v1, p1, p3}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :goto_0
    const/4 p3, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lˆי/ᵎﹶ;->ⁱˊ:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    move-object p3, v1

    goto :goto_2

    :catch_0
    move-exception p2

    move-object p3, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_1
    :try_start_2
    const-string v1, "Error serializing key/value metadata."

    const-string v2, "FirebaseCrashlytics"

    nop

    invoke-static {p1}, Lˆי/ᵎﹶ;->ﾞᴵ(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p3, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-static {p3, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

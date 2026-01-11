.class public abstract Lʼˑ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹳʽ/ʻٴ;

.field public static final ˈ:Lﹳʽ/ˏי;

.field public static final ˑﹳ:Lﹳʽ/ˑﹳ;

.field public static final ⁱˊ:Lـʾ/ᵔﹳ;

.field public static final ﹳٴ:Lـʾ/ᵔﹳ;

.field public static final ﾞᴵ:Lﹳʽ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v0}, Lﹳʽ/ᵔי;->ʽ(Ljava/lang/String;)Lʾᐧ/ﹳٴ;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    sget-object v4, Lﹳʾ/ٴﹶ;->ˑﹳ:Lﹳʾ/ٴﹶ;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lᴵﹳ/י;->ʽʽ:Lᴵﹳ/י;

    sget-object v4, Lﹳʾ/ٴﹶ;->ⁱˊ:Lﹳʾ/ٴﹶ;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lᴵﹳ/י;->ˈٴ:Lᴵﹳ/י;

    sget-object v4, Lﹳʾ/ٴﹶ;->ˈ:Lﹳʾ/ٴﹶ;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lᴵﹳ/י;->ˊʻ:Lᴵﹳ/י;

    sget-object v4, Lﹳʾ/ٴﹶ;->ʽ:Lﹳʾ/ٴﹶ;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lـʾ/ᵔﹳ;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    const/16 v4, 0xf

    invoke-direct {v3, v1, v4, v2}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    sput-object v3, Lʼˑ/ʽ;->ﹳٴ:Lـʾ/ᵔﹳ;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lᴵﹳ/ˈʿ;->ʽʽ:Lᴵﹳ/ˈʿ;

    sget-object v4, Lﹳʾ/ˆʾ;->ⁱˊ:Lﹳʾ/ˆʾ;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lᴵﹳ/ˈʿ;->ٴᵢ:Lᴵﹳ/ˈʿ;

    sget-object v4, Lﹳʾ/ˆʾ;->ʽ:Lﹳʾ/ˆʾ;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lᴵﹳ/ˈʿ;->ᴵᵔ:Lᴵﹳ/ˈʿ;

    sget-object v4, Lﹳʾ/ˆʾ;->ˈ:Lﹳʾ/ˆʾ;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lᴵﹳ/ˈʿ;->ˈٴ:Lᴵﹳ/ˈʿ;

    sget-object v4, Lﹳʾ/ˆʾ;->ˑﹳ:Lﹳʾ/ˆʾ;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lᴵﹳ/ˈʿ;->ˊʻ:Lᴵﹳ/ˈʿ;

    sget-object v4, Lﹳʾ/ˆʾ;->ﾞᴵ:Lﹳʾ/ˆʾ;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lـʾ/ᵔﹳ;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    const/16 v4, 0xf

    invoke-direct {v3, v1, v4, v2}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    sput-object v3, Lʼˑ/ʽ;->ⁱˊ:Lـʾ/ᵔﹳ;

    new-instance v1, Lʻʿ/ᵔﹳ;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lʻʿ/ᵔﹳ;-><init>(I)V

    new-instance v2, Lﹳʽ/ʻٴ;

    const-class v3, Lﹳʾ/ﾞʻ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ʻٴ;-><init>(Ljava/lang/Class;Lﹳʽ/ـˆ;)V

    sput-object v2, Lʼˑ/ʽ;->ʽ:Lﹳʽ/ʻٴ;

    new-instance v1, Lʻʿ/ᵔﹳ;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lʻʿ/ᵔﹳ;-><init>(I)V

    new-instance v2, Lﹳʽ/ˏי;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ˏי;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ʽﹳ;)V

    sput-object v2, Lʼˑ/ʽ;->ˈ:Lﹳʽ/ˏי;

    new-instance v1, Lʻʿ/ᵔﹳ;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lʻʿ/ᵔﹳ;-><init>(I)V

    new-instance v2, Lﹳʽ/ˑﹳ;

    const-class v3, Lﹳʾ/ᵔᵢ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ˑﹳ;-><init>(Ljava/lang/Class;Lﹳʽ/ﾞᴵ;)V

    sput-object v2, Lʼˑ/ʽ;->ˑﹳ:Lﹳʽ/ˑﹳ;

    new-instance v1, Lʻʿ/ᵔﹳ;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lʻʿ/ᵔﹳ;-><init>(I)V

    new-instance v2, Lﹳʽ/ʽ;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ʽ;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ˈ;)V

    sput-object v2, Lʼˑ/ʽ;->ﾞᴵ:Lﹳʽ/ʽ;

    return-void
.end method

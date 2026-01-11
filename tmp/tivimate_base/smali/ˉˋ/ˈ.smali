.class public final Lˉˋ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ʽ:Lʿˑ/ⁱˊ;

.field public static final ⁱˊ:Lʿˑ/ⁱˊ;

.field public static final ﹳٴ:Lˉˋ/ˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lˉˋ/ˈ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˉˋ/ˈ;->ﹳٴ:Lˉˋ/ˈ;

    new-instance v0, Lˈʾ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˈʾ/ﹳٴ;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-class v2, Lˈʾ/ˈ;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lʿˑ/ⁱˊ;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "logSource"

    invoke-direct {v0, v3, v1}, Lʿˑ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lˉˋ/ˈ;->ⁱˊ:Lʿˑ/ⁱˊ;

    new-instance v0, Lˈʾ/ﹳٴ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lˈʾ/ﹳٴ;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lʿˑ/ⁱˊ;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "logEventDropped"

    invoke-direct {v0, v2, v1}, Lʿˑ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lˉˋ/ˈ;->ʽ:Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lˆ/ˑﹳ;

    check-cast p2, Lʿˑ/ˈ;

    sget-object v0, Lˉˋ/ˈ;->ⁱˊ:Lʿˑ/ⁱˊ;

    iget-object v1, p1, Lˆ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    sget-object v0, Lˉˋ/ˈ;->ʽ:Lʿˑ/ⁱˊ;

    iget-object p1, p1, Lˆ/ˑﹳ;->ⁱˊ:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Lʿˑ/ˈ;->ﾞᴵ(Lʿˑ/ⁱˊ;Ljava/lang/Object;)Lʿˑ/ˈ;

    return-void
.end method

.class public final Lʼـ/ˈ;
.super Lʼـ/ʽ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lʼـ/ﹳٴ;->ⁱˊ:Lʼـ/ﹳٴ;

    invoke-direct {p0, v0}, Lʼـ/ˈ;-><init>(Lʼـ/ʽ;)V

    return-void
.end method

.method public constructor <init>(Lʼـ/ʽ;)V
    .locals 1

    iget-object p1, p1, Lʼـ/ʽ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Lʼـ/ʽ;-><init>()V

    iget-object v0, p0, Lʼـ/ʽ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lʼـ/ⁱˊ;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lʼـ/ʽ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ﹳٴ(Lʼـ/ⁱˊ;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʼـ/ʽ;->ﹳٴ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lᐧⁱ/ˉٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:Lcom/parse/ʼᐧ;

.field public static final ﾞᴵ:Lcom/parse/ʼᐧ;


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ˈ:Ljava/lang/String;

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/parse/ʼᐧ;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/parse/ʼᐧ;-><init>(I)V

    sput-object v0, Lᐧⁱ/ˉٴ;->ˑﹳ:Lcom/parse/ʼᐧ;

    new-instance v0, Lcom/parse/ʼᐧ;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/parse/ʼᐧ;-><init>(I)V

    sput-object v0, Lᐧⁱ/ˉٴ;->ﾞᴵ:Lcom/parse/ʼᐧ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᐧⁱ/ˉٴ;->ﹳٴ:I

    iput p2, p0, Lᐧⁱ/ˉٴ;->ⁱˊ:I

    iput-object p3, p0, Lᐧⁱ/ˉٴ;->ʽ:Ljava/lang/String;

    iput-object p4, p0, Lᐧⁱ/ˉٴ;->ˈ:Ljava/lang/String;

    return-void
.end method

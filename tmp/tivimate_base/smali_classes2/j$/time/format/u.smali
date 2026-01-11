.class public final Lj$/time/format/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lj$/time/f;

.field public static final i:Ljava/util/Map;


# instance fields
.field public a:Lj$/time/format/u;

.field public final b:Lj$/time/format/u;

.field public final c:Ljava/util/List;

.field public final d:Z

.field public e:I

.field public f:C

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj$/time/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    sput-object v0, Lj$/time/format/u;->h:Lj$/time/f;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj$/time/format/u;->i:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/i;->a:Lj$/time/temporal/g;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v3, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/k;->a:Lj$/time/temporal/j;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/u;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lj$/time/format/u;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/time/format/u;->b:Lj$/time/format/u;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/time/format/u;->d:Z

    return-void
.end method

.method public constructor <init>(Lj$/time/format/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj$/time/format/u;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lj$/time/format/u;->g:I

    iput-object p1, p0, Lj$/time/format/u;->b:Lj$/time/format/u;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/time/format/u;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/format/DateTimeFormatter;)V
    .locals 2

    .prologue
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p1, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    iget-boolean v0, p1, Lj$/time/format/d;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/format/d;

    iget-object p1, p1, Lj$/time/format/d;->a:[Lj$/time/format/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/time/format/d;-><init>([Lj$/time/format/e;Z)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    return-void
.end method

.method public final b(Lj$/time/temporal/a;IIZ)V
    .locals 1

    .prologue
    if-ne p2, p3, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Lj$/time/format/f;

    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/f;-><init>(Lj$/time/temporal/o;IIZ)V

    invoke-virtual {p0, v0}, Lj$/time/format/u;->j(Lj$/time/format/i;)V

    return-void

    :cond_0
    new-instance v0, Lj$/time/format/f;

    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/f;-><init>(Lj$/time/temporal/o;IIZ)V

    invoke-virtual {p0, v0}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    return-void
.end method

.method public final c(Lj$/time/format/e;)I
    .locals 4

    .prologue
    const-string v0, "pp"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    iget v1, v0, Lj$/time/format/u;->e:I

    if-lez v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v2, Lj$/time/format/k;

    iget-char v3, v0, Lj$/time/format/u;->f:C

    invoke-direct {v2, p1, v1, v3}, Lj$/time/format/k;-><init>(Lj$/time/format/e;IC)V

    move-object p1, v2

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lj$/time/format/u;->e:I

    iput-char v1, v0, Lj$/time/format/u;->f:C

    :cond_1
    iget-object v0, v0, Lj$/time/format/u;->c:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    const/4 v0, -0x1

    iput v0, p1, Lj$/time/format/u;->g:I

    iget-object p1, p1, Lj$/time/format/u;->c:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final d(C)V
    .locals 1

    new-instance v0, Lj$/time/format/c;

    invoke-direct {v0, p1}, Lj$/time/format/c;-><init>(C)V

    invoke-virtual {p0, v0}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string v0, "literal"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lj$/time/format/c;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Lj$/time/format/c;-><init>(C)V

    invoke-virtual {p0, v0}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    return-void

    :cond_0
    new-instance v0, Lj$/time/format/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lj$/time/format/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    :cond_1
    return-void
.end method

.method public final f(Lj$/time/format/TextStyle;)V
    .locals 2

    .prologue
    const-string v0, "style"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/format/TextStyle;->SHORT:Lj$/time/format/TextStyle;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Style must be either full or short"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lj$/time/format/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lj$/time/format/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lj$/time/format/j;

    invoke-direct {v0, p1, p2}, Lj$/time/format/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    return-void
.end method

.method public final h(Lj$/time/temporal/a;Ljava/util/Map;)V
    .locals 2

    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "textLookup"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    sget-object p2, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lj$/time/format/A;

    invoke-direct {v1, v0}, Lj$/time/format/A;-><init>(Ljava/util/Map;)V

    new-instance v0, Lj$/time/format/a;

    invoke-direct {v0, v1}, Lj$/time/format/a;-><init>(Lj$/time/format/A;)V

    new-instance v1, Lj$/time/format/q;

    invoke-direct {v1, p1, p2, v0}, Lj$/time/format/q;-><init>(Lj$/time/temporal/o;Lj$/time/format/TextStyle;Lj$/time/format/B;)V

    invoke-virtual {p0, v1}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    return-void
.end method

.method public final i(Lj$/time/temporal/o;Lj$/time/format/TextStyle;)V
    .locals 2

    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "textStyle"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lj$/time/format/q;

    sget-object v1, Lj$/time/format/B;->c:Lj$/time/format/B;

    invoke-direct {v0, p1, p2, v1}, Lj$/time/format/q;-><init>(Lj$/time/temporal/o;Lj$/time/format/TextStyle;Lj$/time/format/B;)V

    invoke-virtual {p0, v0}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    return-void
.end method

.method public final j(Lj$/time/format/i;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    iget v1, v0, Lj$/time/format/u;->g:I

    if-ltz v1, :cond_1

    iget-object v0, v0, Lj$/time/format/u;->c:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/format/i;

    iget v2, p1, Lj$/time/format/i;->b:I

    iget v3, p1, Lj$/time/format/i;->c:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lj$/time/format/i;->d:Lj$/time/format/F;

    sget-object v4, Lj$/time/format/F;->NOT_NEGATIVE:Lj$/time/format/F;

    if-ne v2, v4, :cond_0

    invoke-virtual {v0, v3}, Lj$/time/format/i;->e(I)Lj$/time/format/i;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/format/i;->d()Lj$/time/format/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    iget-object p1, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    iput v1, p1, Lj$/time/format/u;->g:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj$/time/format/i;->d()Lj$/time/format/i;

    move-result-object v0

    iget-object v2, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    invoke-virtual {p0, p1}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    move-result p1

    iput p1, v2, Lj$/time/format/u;->g:I

    :goto_0
    iget-object p1, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    iget-object p1, p1, Lj$/time/format/u;->c:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    move-result p1

    iput p1, v0, Lj$/time/format/u;->g:I

    return-void
.end method

.method public final k(Lj$/time/temporal/o;)V
    .locals 4

    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lj$/time/format/i;

    const/16 v1, 0x13

    sget-object v2, Lj$/time/format/F;->NORMAL:Lj$/time/format/F;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3, v1, v2}, Lj$/time/format/i;-><init>(Lj$/time/temporal/o;IILj$/time/format/F;)V

    invoke-virtual {p0, v0}, Lj$/time/format/u;->j(Lj$/time/format/i;)V

    return-void
.end method

.method public final l(Lj$/time/temporal/o;I)V
    .locals 2

    .prologue
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x13

    if-gt p2, v0, :cond_0

    new-instance v0, Lj$/time/format/i;

    sget-object v1, Lj$/time/format/F;->NOT_NEGATIVE:Lj$/time/format/F;

    invoke-direct {v0, p1, p2, p2, v1}, Lj$/time/format/i;-><init>(Lj$/time/temporal/o;IILj$/time/format/F;)V

    invoke-virtual {p0, v0}, Lj$/time/format/u;->j(Lj$/time/format/i;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The width must be from 1 to 19 inclusive but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Lj$/time/temporal/o;IILj$/time/format/F;)V
    .locals 2

    .prologue
    if-ne p2, p3, :cond_0

    sget-object v0, Lj$/time/format/F;->NOT_NEGATIVE:Lj$/time/format/F;

    if-ne p4, v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lj$/time/format/u;->l(Lj$/time/temporal/o;I)V

    return-void

    :cond_0
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "signStyle"

    invoke-static {p4, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v1, 0x13

    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_2

    if-gt p3, v1, :cond_2

    if-lt p3, p2, :cond_1

    new-instance v0, Lj$/time/format/i;

    invoke-direct {v0, p1, p2, p3, p4}, Lj$/time/format/i;-><init>(Lj$/time/temporal/o;IILj$/time/format/F;)V

    invoke-virtual {p0, v0}, Lj$/time/format/u;->j(Lj$/time/format/i;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "The maximum width must exceed or equal the minimum width but "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n()V
    .locals 3

    .prologue
    iget-object v0, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    iget-object v1, v0, Lj$/time/format/u;->b:Lj$/time/format/u;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lj$/time/format/u;->c:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lj$/time/format/d;

    iget-object v1, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    iget-object v2, v1, Lj$/time/format/u;->c:Ljava/util/List;

    iget-boolean v1, v1, Lj$/time/format/u;->d:Z

    invoke-direct {v0, v2, v1}, Lj$/time/format/d;-><init>(Ljava/util/List;Z)V

    iget-object v1, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    iget-object v1, v1, Lj$/time/format/u;->b:Lj$/time/format/u;

    iput-object v1, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    invoke-virtual {p0, v0}, Lj$/time/format/u;->c(Lj$/time/format/e;)I

    return-void

    :cond_0
    iget-object v0, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    iget-object v0, v0, Lj$/time/format/u;->b:Lj$/time/format/u;

    iput-object v0, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    const/4 v1, -0x1

    iput v1, v0, Lj$/time/format/u;->g:I

    new-instance v1, Lj$/time/format/u;

    invoke-direct {v1, v0}, Lj$/time/format/u;-><init>(Lj$/time/format/u;)V

    iput-object v1, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    return-void
.end method

.method public final p(Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lj$/time/format/u;->q(Ljava/util/Locale;Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/util/Locale;Lj$/time/format/E;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;
    .locals 3

    .prologue
    const-string v0, "locale"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lj$/time/format/u;->a:Lj$/time/format/u;

    iget-object v0, v0, Lj$/time/format/u;->b:Lj$/time/format/u;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/time/format/u;->n()V

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/format/d;

    iget-object v1, p0, Lj$/time/format/u;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/format/d;-><init>(Ljava/util/List;Z)V

    new-instance v1, Lj$/time/format/DateTimeFormatter;

    sget-object v2, Lj$/time/format/C;->a:Lj$/time/format/C;

    invoke-direct {v1, v0, p1, p2, p3}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/d;Ljava/util/Locale;Lj$/time/format/E;Lj$/time/chrono/j;)V

    return-object v1
.end method
